/* eslint-disable @typescript-eslint/no-explicit-any */
import axios from "axios";
import { TeamRank, TeamStandings, WinLossRecord } from "./standings-models";

export async function getStandings(): Promise<TeamStandings[]> {
  const response = await axios.get(
    "https://site.api.espn.com/apis/v2/sports/basketball/nba/standings",
  );

  const conferences = response.data.children.map((conference: any) => {
    const conferenceName = conference.name.split(" ")[0];
    const conferenceId = parseInt(conference.id, 10);

    const teams = conference.standings.entries.map((team: any) =>
      parseEspnTeamResponse(team, conferenceId, conferenceName),
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

function parseEspnTeamResponse(
  team: any,
  conferenceId: number,
  conferenceName: string,
): TeamStandings {
  const espnTeamId = parseInt(team.team.id, 10);
  const divisionInfo = getDivisionByTeamId(espnTeamId);
  const conferenceRank = new TeamRank(
    conferenceId,
    conferenceName,
    team.conferenceRank,
    formatGamesBehind(team.stats[5].value),
  );

  const overall = new WinLossRecord(team.stats[12].value, team.stats[7].value);
  const home = parseRecord(team.stats[14].displayValue);
  const away = parseRecord(team.stats[15].displayValue);
  const lastTen = parseRecord(team.stats[18].displayValue);
  const streak = Math.abs(team.stats[10].value);
  const isWinStreak = team.stats[10].displayValue.includes("W");
  return new TeamStandings(
    teamIdMapping[espnTeamId],
    team.team.shortDisplayName,
    team.team.displayName,
    conferenceRank,
    new TeamRank(divisionInfo.id, divisionInfo.name, 0, "-"),
    overall,
    home,
    away,
    lastTen,
    streak,
    isWinStreak,
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
