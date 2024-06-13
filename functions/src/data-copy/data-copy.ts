import { logger } from "firebase-functions";
import { defineSecret } from "firebase-functions/params";
import { onSchedule } from "firebase-functions/v2/scheduler";
import {
  getSeasonLeagueGames,
  getTeams,
  getTodayLeagueGames,
} from "./ball-io-api";
import { ApiResponse, GameResponse, TeamResponse } from "./ball-io-responses";
import {
  clearAllGames,
  saveGames,
  saveTeamInfos,
  saveTeamStandings,
} from "./firestore-service";
import { getStandings } from "./espn-standings-api";

const apiKey = defineSecret("BALLIO_API_KEY");

export const startOfSeasonUpdate = onSchedule(
  { secrets: [apiKey], schedule: "0 6 1 10 *" },
  async () => {
    await loadTeamInfos();
    await loadAndReplaceAllGames();
  },
);

export const hourlyUpdate = onSchedule({ schedule: "0 * * * *" }, async () => {
  await loadTodayGames();
  await loadStandings();
});

async function loadTeamInfos() {
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

async function loadAndReplaceAllGames() {
  try {
    await clearAllGames();
    logger.info("All games cleared");

    const result: GameResponse[] = [];
    let currentCursor: number | null = null;
    let loadedAllPages = false;

    while (!loadedAllPages) {
      const response: ApiResponse<Array<GameResponse>> = (
        await getSeasonLeagueGames(apiKey, currentCursor)
      ).data;
      console.log(
        `Loaded ${response.data.length} games for cursor ${currentCursor}`,
      );

      result.push(...response.data);

      currentCursor = response.meta.next_cursor;
      loadedAllPages = !currentCursor;
    }

    await saveGames(result);
    logger.info("All games loaded successfully");
  } catch (error) {
    logger.error("Error loading games", error);
  }
}

async function loadTodayGames() {
  try {
    const response = (await getTodayLeagueGames(apiKey)).data;
    await saveGames(response.data);
    logger.info("Today's games loaded successfully");
  } catch (error) {
    logger.error("Error loading today games", error);
  }
}

async function loadStandings() {
  try {
    const teams = await getStandings();
    await saveTeamStandings(teams);
    logger.info("Standings loaded successfully");
  } catch (error) {
    logger.error("Error loading standings", error);
  }
}
