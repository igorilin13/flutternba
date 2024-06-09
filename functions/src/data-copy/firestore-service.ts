import { getFirestore } from "firebase-admin/firestore";
import { GameResponse, GameState, TeamResponse } from "./ball-io-responses";
import { calculateGameState } from "./ball-io-api";

const db = getFirestore();

export function saveTeamInfos(
  teams: TeamResponse[],
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    teams.forEach((team) => {
      const docRef = db.collection("teams").doc(team.id.toString());
      batch.set(docRef, buildTeamInfoDocContent(team));
    });
  });
}

export async function clearAllGames() {
  const docs = await db.collection("games").listDocuments();
  return withBatch((batch) => {
    docs.forEach((doc) => {
      batch.delete(doc);
    });
  });
}

export function saveGames(
  games: GameResponse[],
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    games.forEach((game) => {
      const docRef = db.collection("games").doc(game.id.toString());
      batch.set(docRef, buildGameDocContent(game));
    });
  });
}

function withBatch(action: (batch: FirebaseFirestore.WriteBatch) => void) {
  const batch = db.batch();
  action(batch);
  return batch.commit();
}

function buildGameDocContent(game: GameResponse) {
  const gameState = calculateGameState(game);
  return {
    id: game.id,
    leagueDate: game.date,
    homeTeamId: game.home_team.id,
    homeTeam: buildTeamInfoDocContent(game.home_team),
    homeTeamScore: game.home_team_score,
    postseason: game.postseason,
    status: gameState as number,
    scheduled: gameState == GameState.Scheduled ? game.status : null,
    inGameTime: game.time,
    visitorTeamId: game.visitor_team.id,
    visitorTeam: buildTeamInfoDocContent(game.visitor_team),
    visitorTeamScore: game.visitor_team_score,
  };
}

function buildTeamInfoDocContent(team: TeamResponse) {
  return {
    id: team.id,
    name: team.name,
    fullName: team.full_name,
  };
}
