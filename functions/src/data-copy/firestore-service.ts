import { getFirestore } from "firebase-admin/firestore";
import { GameResponse, TeamResponse } from "./ball-io-responses";

const db = getFirestore();

export function saveTeamInfos(teams: TeamResponse[]) {
  return withBatch((batch) => {
    teams.forEach((team) => {
      const docRef = db.collection("teams").doc(team.id.toString());
      batch.set(docRef, buildTeamInfoDocContent(team));
    });
  });
}

export function saveGames(games: GameResponse[]) {
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
  return {
    id: game.id,
    date: game.date,
    homeTeamId: game.home_team.id,
    homeTeam: buildTeamInfoDocContent(game.home_team),
    homeTeamScore: game.home_team_score,
    postseason: game.postseason,
    status: game.status,
    time: game.time,
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
