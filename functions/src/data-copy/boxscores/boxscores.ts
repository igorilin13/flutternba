import { onCall } from "firebase-functions/v2/https";
import { getGameStats } from "../ball-io/ball-io-api";
import { defineSecret } from "firebase-functions/params";
import { associateBy, groupBy } from "../../utils/collections";
import { PlayerGameStatsResponse } from "../ball-io/ball-io-responses";
import {
  GameBoxScore,
  PlayerStats,
  TeamBoxScore,
  TeamStats,
} from "./boxscore-models";
import { getGame, getTeamStandings } from "../db/firestore-service";
import { TeamStandings, WinLossRecord } from "../standings/standings-models";
import { toGameInfo } from "../db/db-models";

const apiKey = defineSecret("BALLIO_API_KEY");

export const getBoxScore = onCall({ secrets: [apiKey] }, async (request) => {
  const gameId = parseInt(request.data.gameId);
  if (isNaN(gameId)) {
    return Promise.reject(Error("Invalid gameId"));
  }

  try {
    const playersData = (await getGameStats(apiKey, gameId)).data.data;
    const hasStarted = playersData.length > 0;
    if (!hasStarted) {
      const gameInfo = await getGame(gameId);
      if (gameInfo) {
        return new GameBoxScore(gameInfo, null, null);
      } else {
        return Promise.reject(Error("Game not found"));
      }
    }

    const teamInfos = Array.from(
      associateBy(
        playersData,
        (player) => player.team.id,
        (player) => player.team,
      ).values(),
    );
    if (teamInfos.length !== 2) {
      return Promise.reject(Error("Unexpected error"));
    }

    const playersByTeamId = groupBy(
      playersData,
      (player) => player.team.id,
      (player) => toPlayerStatsModel(player),
    );

    const teamBoxScores: TeamBoxScore[] = [];
    const standingsByTeamId = await loadStandings(
      Array.from(playersByTeamId.keys()),
    );
    playersByTeamId.forEach((players, teamId) => {
      players.slice(0, 5).forEach((player, index) => {
        player.startPosition = getStartPosition(index);
      });
      const record = standingsByTeamId.get(teamId)?.overall ?? null;
      teamBoxScores.push(toTeamBoxScoreModel(teamId, record, players));
    });

    const gameInfo = toGameInfo(
      playersData[0].game,
      teamInfos[0],
      teamInfos[1],
    );

    return new GameBoxScore(gameInfo, teamBoxScores[0], teamBoxScores[1]);
  } catch (error) {
    console.error("Error loading box scores", error);
    return Promise.reject(Error("Error loading box scores"));
  }
});

async function loadStandings(
  teamIds: number[],
): Promise<Map<number, TeamStandings>> {
  const result = new Map<number, TeamStandings>();
  for (const teamId of teamIds) {
    const standings = await getTeamStandings(teamId);
    if (standings) {
      result.set(teamId, standings);
    }
  }
  return result;
}

function toPlayerStatsModel(response: PlayerGameStatsResponse): PlayerStats {
  return new PlayerStats(
    response.player.id,
    response.player.first_name,
    response.player.last_name,
    null,
    response.player.jersey_number,
    parseInt(response.min),
    response.pts,
    response.fgm,
    response.fga,
    response.fg3m,
    response.fg3a,
    response.ftm,
    response.fta,
    response.reb,
    response.oreb,
    response.dreb,
    response.blk,
    response.stl,
    response.turnover,
  );
}

function toTeamBoxScoreModel(
  teamId: number,
  record: WinLossRecord | null,
  players: PlayerStats[],
): TeamBoxScore {
  const teamStats = new TeamStats(teamId, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  players.forEach((player) => {
    teamStats.fgm += player.fgm;
    teamStats.fga += player.fga;
    teamStats.fg3pm += player.fg3pm;
    teamStats.fg3pa += player.fg3pa;
    teamStats.ftm += player.ftm;
    teamStats.fta += player.fta;
    teamStats.reb += player.reb;
    teamStats.oreb += player.oreb;
    teamStats.dreb += player.dreb;
    teamStats.blk += player.blk;
    teamStats.stl += player.stl;
    teamStats.to += player.to;
  });
  return new TeamBoxScore(teamStats, record, players);
}

function getStartPosition(index: number): string | null {
  switch (index) {
    case 0:
    case 1:
      return "F";
    case 2:
      return "C";
    case 3:
    case 4:
      return "G";
    default:
      return null;
  }
}
