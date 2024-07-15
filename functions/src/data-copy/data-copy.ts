import { logger } from "firebase-functions";
import { defineSecret } from "firebase-functions/params";
import { onSchedule } from "firebase-functions/v2/scheduler";
import {
  getSeasonLeagueGames,
  getTeams,
  getTodayLeagueGames,
} from "./ball-io/ball-io-api";
import {
  ApiResponse,
  GameResponse,
  TeamResponse,
} from "./ball-io/ball-io-responses";
import {
  clearAllGames,
  clearPlayoffData,
  getPlayoffGames,
  saveGames,
  savePlayoffRounds,
  saveTeamInfos,
  saveTeamSeasonStats,
  saveTeamStandings,
  updatePlayoffIdForGameIds,
} from "./db/firestore-service";
import { getStandings } from "./standings/standings-api";
import { calculatePlayoffRounds } from "./playoffs/playoffs";
import { TeamStandings } from "./standings/standings-models";
import {
  sendDueReminders,
  updatePendingReminders,
} from "../reminders/game-reminders";
import { GameInfoModel, toGameInfoModel } from "./db/db-models";
import { loadTeamAverages } from "./team-avg/team-avg";

const apiKey = defineSecret("BALLIO_API_KEY");

export const startOfSeasonUpdate = onSchedule(
  { secrets: [apiKey], schedule: "0 6 1 10 *" },
  async () => {
    await Promise.all([
      updateTeamInfos(),
      updateAllGames(),
      clearPlayoffData(),
    ]);
  },
);

export const hourlyUpdate = onSchedule({ schedule: "0 * * * *" }, async () => {
  await Promise.all([
    (async () => {
      const todayGames = await updateTodayGames();
      if (todayGames) {
        await updatePendingReminders(todayGames);
      }
    })(),
    (async () => {
      const teamStandings = await updateStandings();
      if (teamStandings) {
        await updatePlayoffData(teamStandings);
        await updateSeasonTeamStats(teamStandings);
      }
    })(),
  ]);
});

export const remindersJob = onSchedule(
  { schedule: "*/15 * * * *" },
  async () => {
    await sendDueReminders();
  },
);

async function updateTeamInfos() {
  try {
    const response = (await getTeams(apiKey)).data;

    const activeTeams: TeamResponse[] = response.data.filter(
      (team: TeamResponse) => team.id <= 30,
    );

    await saveTeamInfos(activeTeams);
    logger.info("Team data loaded successfully");
  } catch (error) {
    logger.error("Error loading team data", error);
  }
}

async function updateAllGames() {
  try {
    await clearAllGames();
    logger.info("All games cleared");

    const result: GameInfoModel[] = [];
    let currentCursor: number | null = null;
    let loadedAllPages = false;

    while (!loadedAllPages) {
      const response: ApiResponse<Array<GameResponse>> = (
        await getSeasonLeagueGames(apiKey, currentCursor)
      ).data;
      logger.info(
        `Loaded ${response.data.length} games for cursor ${currentCursor}`,
      );

      result.push(
        ...response.data.map((response: GameResponse) =>
          toGameInfoModel(response),
        ),
      );

      currentCursor = response.meta.next_cursor;
      loadedAllPages = !currentCursor;
    }

    await saveGames(result);
    logger.info("All games loaded successfully");
  } catch (error) {
    logger.error("Error loading games", error);
  }
}

async function updateTodayGames(): Promise<GameInfoModel[] | undefined> {
  try {
    const response = (await getTodayLeagueGames(apiKey)).data;
    const games = response.data.map((response: GameResponse) =>
      toGameInfoModel(response),
    );
    await saveGames(games);
    logger.info("Today's games loaded successfully", games.length);
    return games;
  } catch (error) {
    logger.error("Error loading today games", error);
    return undefined;
  }
}

async function updateStandings(): Promise<TeamStandings[] | null> {
  try {
    const teams = await getStandings();
    await saveTeamStandings(teams);
    logger.info("Standings loaded successfully");
    return teams;
  } catch (error) {
    logger.error("Error loading standings", error);
    return null;
  }
}

async function updatePlayoffData(teamStandings: TeamStandings[]) {
  const playoffGames = await getPlayoffGames();
  const [rounds, seriesIdByGameId] = calculatePlayoffRounds(
    playoffGames,
    teamStandings,
  );
  if (rounds.length > 0) {
    await savePlayoffRounds(rounds);
    logger.info("Playoff data saved successfully");

    const updateGameIdWithSeriesId = new Map<number, string>();
    playoffGames.forEach((game) => {
      if (!game.playoffId) {
        const seriesId = seriesIdByGameId.get(game.id);
        if (seriesId) {
          updateGameIdWithSeriesId.set(game.id, seriesId);
        }
      }
    });
    if (updateGameIdWithSeriesId.size > 0) {
      await updatePlayoffIdForGameIds(updateGameIdWithSeriesId);
      logger.info("Playoff games series id updated successfully");
    }
  } else {
    await clearPlayoffData();
    logger.info("No playoff data available, cleared existing collection");
  }
}

async function updateSeasonTeamStats(teamStandings: TeamStandings[]) {
  try {
    const teamStats = await loadTeamAverages(teamStandings);
    await saveTeamSeasonStats(teamStats);
    logger.info("Team stats loaded and saved");
  } catch (e) {
    logger.error("Error loading team stats", e);
  }
}
