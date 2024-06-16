import { getFirestore } from "firebase-admin/firestore";
import { GameResponse, GameState, TeamResponse } from "./ball-io-responses";
import { calculateGameState } from "./ball-io-api";
import { TeamStandings } from "./espn-standings-api";
import { PlayoffRound } from "./playoffs";

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

export async function saveTeamStandings(
  teams: TeamStandings[],
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    teams.forEach((team) => {
      const docRef = db.collection("standings").doc(team.id.toString());
      batch.set(docRef, JSON.parse(JSON.stringify(team)));
    });
  });
}

export async function getPlayoffGames(): Promise<
  FirebaseFirestore.DocumentData[]
> {
  return (
    await getFirestore()
      .collection("games")
      .where("postseason", "==", true)
      .get()
  ).docs.map((doc) => doc.data());
}

export async function savePlayoffRounds(
  rounds: PlayoffRound[],
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    rounds.forEach((round) => {
      const docRef = db.collection("playoffs").doc(round.id.toString());
      batch.set(docRef, JSON.parse(JSON.stringify(round)));
    });
  });
}

export async function clearPlayoffData() {
  const docs = await db.collection("playoffs").listDocuments();
  return withBatch((batch) => {
    docs.forEach((doc) => {
      batch.delete(doc);
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
