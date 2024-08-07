/* eslint-disable @typescript-eslint/no-explicit-any */
import axios from "axios";
import { TeamRank, TeamStandings, WinLossRecord } from "./standings-models";
import { defineString } from "firebase-functions/params";
import { getTeamInfos } from "../db/firestore-service";
import { associateBy } from "../../utils/collections";
import { TeamInfoModel } from "../db/db-models";

const apiUrl = defineString("STANDINGS_API_URL");

export async function getStandings(): Promise<TeamStandings[]> {
  const [response, teamInfos] = await Promise.all([
    axios.get(apiUrl.value()),
    getTeamInfos(),
  ]);
  const teamsById = associateBy(teamInfos, (team) => team.id);

  const conferences = response.data.children.map((conference: any) => {
    const conferenceName = conference.name.split(" ")[0];
    const conferenceId = parseInt(conference.id, 10);

    const teams = conference.standings.entries.map((item: any) =>
      parseTeamResponse(item, conferenceId, conferenceName, teamsById),
    );

    teams.sort(
      (a: TeamStandings, b: TeamStandings) =>
        b.overall.winPct - a.overall.winPct,
    );
    teams.forEach((team: TeamStandings, index: number) => {
      team.conference.rank = index + 1;
    });

    const byDivision = groupTeamsByDivision(teams);
    Object.values(byDivision).forEach((divisionTeams) => {
      divisionTeams.sort((a, b) => b.overall.winPct - a.overall.winPct);

      const leader = divisionTeams[0];
      divisionTeams.forEach((team, index) => {
        team.division.rank = index + 1;

        const winsDiff = leader.overall.win - team.overall.win;
        const lossesDiff = team.overall.loss - leader.overall.loss;
        const gamesBehind = (winsDiff + lossesDiff) / 2;
        team.division.gamesBehind = formatGamesBehind(gamesBehind);
      });
    });

    return teams;
  });

  return conferences.flat();
}

function parseTeamResponse(
  item: any,
  conferenceId: number,
  conferenceName: string,
  teamsById: Map<number, TeamInfoModel>,
): TeamStandings {
  const apiTeamId = parseInt(item.team.id, 10);
  const teamInfo = teamsById.get(teamIdMapping[apiTeamId]);
  if (!teamInfo) {
    throw new Error(`No team info found for team ${apiTeamId}`);
  }

  const divisionInfo = getDivisionByTeamId(apiTeamId);
  const conferenceRank = new TeamRank(
    conferenceId,
    conferenceName,
    item.conferenceRank,
    formatGamesBehind(item.stats[5].value),
  );

  const overall = new WinLossRecord(item.stats[12].value, item.stats[7].value);
  const home = parseRecord(item.stats[14].displayValue);
  const away = parseRecord(item.stats[15].displayValue);
  const lastTen = parseRecord(item.stats[18].displayValue);
  const streak = Math.abs(item.stats[10].value);
  const isWinStreak = item.stats[10].displayValue.includes("W");
  const avgPoints: number = item.stats[1].value;
  const avgPointsAgainst: number = item.stats[0].value;
  return new TeamStandings(
    teamInfo,
    conferenceRank,
    new TeamRank(divisionInfo.id, divisionInfo.name, 0, "-"),
    overall,
    home,
    away,
    lastTen,
    streak,
    isWinStreak,
    avgPoints,
    avgPointsAgainst,
  );
}

function parseRecord(record: string): WinLossRecord {
  const [win, loss] = record.split("-");
  return new WinLossRecord(parseInt(win, 10), parseInt(loss, 10));
}

const teamIdMapping: { [key: number]: number } = {
  19: 22,
  15: 17,
  14: 16,
  20: 23,
  11: 12,
  5: 6,
  18: 20,
  1: 1,
  4: 5,
  8: 9,
  27: 30,
  30: 4,
  28: 28,
  17: 3,
  2: 2,
  25: 21,
  6: 7,
  12: 13,
  13: 14,
  3: 19,
  21: 24,
  16: 18,
  7: 8,
  23: 26,
  9: 10,
  22: 25,
  24: 27,
  29: 15,
  26: 29,
  10: 11,
};

class DivisionInfo {
  constructor(
    public id: number,
    public name: string,
    public teamIds: number[],
  ) {}
}

const divisions: DivisionInfo[] = [
  new DivisionInfo(1, "Atlantic", [2, 18, 20, 17, 28]),
  new DivisionInfo(2, "Central", [5, 11, 8, 4, 15]),
  new DivisionInfo(3, "Southeast", [19, 14, 1, 27, 30]),
  new DivisionInfo(4, "Northwest", [25, 7, 16, 26, 22]),
  new DivisionInfo(5, "Pacific", [12, 13, 21, 23, 9]),
  new DivisionInfo(6, "Southwest", [6, 3, 24, 29, 10]),
];

function getDivisionByTeamId(teamId: number): DivisionInfo {
  return divisions.find((division) =>
    division.teamIds.includes(teamId),
  ) as DivisionInfo;
}

function groupTeamsByDivision(teams: TeamStandings[]): {
  [key: number]: TeamStandings[];
} {
  return teams.reduce(
    (result, team) => {
      const divisionId = team.division.id;
      if (!result[divisionId]) {
        result[divisionId] = [];
      }
      result[divisionId].push(team);
      return result;
    },
    {} as { [key: number]: TeamStandings[] },
  );
}

function formatGamesBehind(value: number): string {
  return value === 0 ? "-" : value.toFixed(1);
}
