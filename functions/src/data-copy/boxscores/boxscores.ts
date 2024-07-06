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
import { getGame } from "../db/firestore-service";
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
    playersByTeamId.forEach((players, teamId) => {
      teamBoxScores.push(toTeamBoxScoreModel(teamId, players));
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

function toPlayerStatsModel(response: PlayerGameStatsResponse): PlayerStats {
  return new PlayerStats(
    response.player.id,
    response.player.first_name,
    response.player.last_name,
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
    response.ast,
  );
}

function toTeamBoxScoreModel(
  teamId: number,
  players: PlayerStats[],
): TeamBoxScore {
  const teamStats = new TeamStats(
    teamId,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
  );
  players.forEach((player) => {
    teamStats.fgMade += player.fgMade;
    teamStats.fgAttempts += player.fgAttempts;
    teamStats.threePtMade += player.threePtMade;
    teamStats.threePtAttempts += player.threePtAttempts;
    teamStats.ftMade += player.ftMade;
    teamStats.ftAttempts += player.ftAttempts;
    teamStats.rebounds += player.rebounds;
    teamStats.offRebounds += player.offRebounds;
    teamStats.defRebounds += player.defRebounds;
    teamStats.blocks += player.blocks;
    teamStats.steals += player.steals;
    teamStats.turnovers += player.turnovers;
    teamStats.assists += player.assists;
  });
  const displayedPlayers = players
    .filter((player) => player.minutes > 0)
    .sort((a, b) => {
      if (b.points !== a.points) {
        return b.points - a.points;
      } else {
        return b.minutes - a.minutes;
      }
    });
  return new TeamBoxScore(teamStats, displayedPlayers);
}
