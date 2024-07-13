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
  saveTeamStandings,
} from "./db/firestore-service";
import { getStandings } from "./standings/espn-standings-api";
import { calculatePlayoffRounds } from "./playoffs/playoffs";
import { TeamStandings } from "./standings/standings-models";
import {
  sendDueReminders,
  updatePendingReminders,
} from "../reminders/game-reminders";
import { GameInfoModel, toGameInfoModel } from "./db/db-models";

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
  const todayGames = await updateTodayGames();
  if (todayGames) {
    await updatePendingReminders(todayGames);
  }

  const teamStandings = await updateStandings();
  if (teamStandings) {
    updatePlayoffData(teamStandings);
  }
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
      console.log(
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
  const rounds = calculatePlayoffRounds(playoffGames, teamStandings);
  if (rounds.length > 0) {
    await savePlayoffRounds(rounds);
    logger.info("Playoff data saved successfully");
  } else {
    await clearPlayoffData();
    logger.info("No playoff data available, cleared existing collection");
  }
}
