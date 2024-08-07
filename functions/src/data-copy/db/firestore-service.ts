import { getFirestore } from "firebase-admin/firestore";
import { TeamResponse } from "../ball-io/ball-io-responses";
import { GameInfoModel, TeamInfoModel, toTeamInfoModel } from "./db-models";
import { TeamStandings } from "../standings/standings-models";
import { PlayoffRound } from "../playoffs/playoffs-models";
import { GameReminder } from "../../reminders/game-reminders";
import { logger } from "firebase-functions/v1";
import { TeamSeasonStats } from "../team-avg/team-avg";

const db = getFirestore();

export function saveTeamInfos(
  teams: TeamResponse[],
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    teams.forEach((team) => {
      const docRef = db.collection("teams").doc(team.id.toString());
      batch.set(docRef, toFirestoreSaveableObject(toTeamInfoModel(team)));
    });
  });
}

export async function getTeamInfos(): Promise<TeamInfoModel[]> {
  const snapshot = await db.collection("teams").get();
  return snapshot.docs.map((doc) => doc.data() as TeamInfoModel);
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
  games: GameInfoModel[],
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    games.forEach((game) => {
      const docRef = db.collection("games").doc(game.id.toString());
      batch.set(docRef, toFirestoreSaveableObject(game));
    });
  });
}

export function updatePlayoffIdForGameIds(
  map: Map<number, string>,
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    map.forEach((playoffId, gameId) => {
      const docRef = db.collection("games").doc(gameId.toString());
      logger.info(`Updating playoffId for game ${gameId} to ${playoffId}`);
      batch.update(docRef, { playoffId: playoffId });
    });
  });
}

export async function getGame(id: number): Promise<GameInfoModel | null> {
  const doc = await db.collection("games").doc(id.toString()).get();
  if (!doc.exists) {
    return null;
  }
  return doc.data() as GameInfoModel;
}

export async function saveTeamStandings(
  teams: TeamStandings[],
): Promise<FirebaseFirestore.WriteResult[]> {
  return withBatch((batch) => {
    teams.forEach((item) => {
      const docRef = db.collection("standings").doc(item.team.id.toString());
      batch.set(docRef, toFirestoreSaveableObject(item));
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

export async function getPendingRemindersDate(): Promise<string | undefined> {
  const doc = await db.doc("reminders/info").get();
  return doc.data()?.date;
}

export async function setPendingReminders(
  date: string,
  remindersByTeamId: { [key: number]: GameReminder },
) {
  return withBatch((batch) => {
    batch.set(db.doc("reminders/info"), { date });
    Object.entries(remindersByTeamId).forEach(([teamId, reminder]) => {
      const docRef = db.collection("reminders").doc(teamId.toString());
      batch.set(docRef, toFirestoreSaveableObject(reminder));
    });
  });
}

export async function getDueReminders(
  time: number,
): Promise<[string, GameReminder][]> {
  const result = await db
    .collection("reminders")
    .where("due", "<=", time)
    .get();
  return result.docs.map((doc) => [doc.id, doc.data() as GameReminder]);
}

export async function removeReminders(teamIds: string[]) {
  return withBatch((batch) => {
    teamIds.forEach((teamId) => {
      const docRef = db.collection("reminders").doc(teamId.toString());
      batch.delete(docRef);
    });
  });
}

export async function saveTeamSeasonStats(teams: TeamSeasonStats[]) {
  return withBatch((batch) => {
    teams.forEach((team) => {
      const docRef = db.collection("teamStats").doc(team.team.id.toString());
      batch.set(docRef, toFirestoreSaveableObject(team));
    });
  });
}

function withBatch(action: (batch: FirebaseFirestore.WriteBatch) => void) {
  const batch = db.batch();
  action(batch);
  return batch.commit();
}

function toFirestoreSaveableObject(obj: unknown) {
  return JSON.parse(JSON.stringify(obj));
}
