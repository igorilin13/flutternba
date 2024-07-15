import axios from "axios";
import * as cheerio from "cheerio";
import { defineString } from "firebase-functions/params";
import { TeamInfoModel } from "../db/db-models";
import { associateBy } from "../../utils/collections";
import { logger } from "firebase-functions";
import { TeamStandings } from "../standings/standings-models";

const apiUrl = defineString("TEAM_STATS_URL");

export class TeamSeasonStats {
  constructor(
    public team: TeamInfoModel,
    public points: number,
    public pointsAgainst: number,
    public fgMade: number,
    public fgAttempts: number,
    public threePtMade: number,
    public threePtAttempts: number,
    public ftMade: number,
    public ftAttempts: number,
    public rebounds: number,
    public offRebounds: number,
    public defRebounds: number,
    public blocks: number,
    public steals: number,
    public turnovers: number,
    public assists: number,
  ) {}
}

export async function loadTeamAverages(
  teamsStandings: TeamStandings[],
): Promise<TeamSeasonStats[]> {
  const url = buildUrl();
  const response = await axios.get(url);
  const $ = cheerio.load(response.data);

  const teamsByFullName = associateBy(
    teamsStandings,
    (item) => item.team.fullName,
  );
  const result: TeamSeasonStats[] = [];
  const dataStatMap: { [key: string]: number } = {};

  $("#div_per_game-team")
    .find("table")
    .find("tbody")
    .find("tr")
    .each((rowIndex, tr) => {
      const cells: string[] = [];

      $(tr)
        .find("td")
        .each((cellIndex, td) => {
          const cellValue = $(td).text().trim();
          cells.push(cellValue);

          if (rowIndex === 0) {
            const dataStat = $(td).attr("data-stat");
            if (dataStat) {
              dataStatMap[dataStat] = cellIndex;
            }
          }
        });

      const teamName = cells[dataStatMap["team"]].replace("*", "");
      const teamStandings = teamsByFullName.get(teamName);
      if (teamStandings) {
        const teamStats = new TeamSeasonStats(
          teamStandings.team,
          parseFloat(cells[dataStatMap["pts"]]),
          teamStandings.pointsAgainst,
          parseFloat(cells[dataStatMap["fg"]]),
          parseFloat(cells[dataStatMap["fga"]]),
          parseFloat(cells[dataStatMap["fg3"]]),
          parseFloat(cells[dataStatMap["fg3a"]]),
          parseFloat(cells[dataStatMap["ft"]]),
          parseFloat(cells[dataStatMap["fta"]]),
          parseFloat(cells[dataStatMap["trb"]]),
          parseFloat(cells[dataStatMap["orb"]]),
          parseFloat(cells[dataStatMap["drb"]]),
          parseFloat(cells[dataStatMap["blk"]]),
          parseFloat(cells[dataStatMap["stl"]]),
          parseFloat(cells[dataStatMap["tov"]]),
          parseFloat(cells[dataStatMap["ast"]]),
        );
        result.push(teamStats);
      } else {
        logger.warn(`Team not found: ${teamName}`);
      }
    });

  return result;
}

function buildUrl(): string {
  const now = new Date();
  const august = 7;
  const season =
    now.getMonth() >= august ? now.getFullYear() + 1 : now.getFullYear();
  return `${apiUrl.value()}NBA_${season}.html`;
}
