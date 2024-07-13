import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutternba/data/games/game_model.dart';

class AppFirebaseDb {
  final FirebaseFirestore _firestore;

  AppFirebaseDb(this._firestore);

  Query<Map<String, dynamic>> getAllTeamInfos() =>
      _firestore.collection("teams").orderBy("id");

  DocumentReference<Map<String, dynamic>> getTeamInfo(int teamId) =>
      _firestore.doc("teams/$teamId");

  DocumentReference<Map<String, dynamic>> getGame(int gameId) =>
      _firestore.doc("games/$gameId");

  Query<Map<String, dynamic>> getLeagueGames(DateTime date) {
    final formattedDate = "${date.year}-"
        "${date.month.toString().padLeft(2, "0")}-"
        "${date.day.toString().padLeft(2, "0")}";
    return _firestore
        .collection("games")
        .where("leagueDate", isEqualTo: formattedDate);
  }

  Query<Map<String, dynamic>> getPlayoffSeriesGames(String seriesId) {
    return _firestore
        .collection("games")
        .where("playoffId", isEqualTo: seriesId);
  }

  Query<Map<String, dynamic>> getLiveOrScheduledTeamGames(
    int teamId,
    int? limit,
  ) {
    return _getTeamGames(
      teamId: teamId,
      statusFilter: Filter.or(
        Filter("status", isEqualTo: GameStatus.live.apiId),
        Filter("status", isEqualTo: GameStatus.scheduled.apiId),
      ),
      limit: limit,
    );
  }

  Query<Map<String, dynamic>> getFinishedTeamGames(
    int teamId,
    int? limit,
    GamesPageKey? pageKey,
  ) {
    final query = _getTeamGames(
      teamId: teamId,
      statusFilter: Filter("status", isEqualTo: GameStatus.finished.apiId),
      limit: limit,
      dateDescending: true,
    );

    return pageKey != null ? query.startAfterDocument(pageKey) : query;
  }

  Query<Map<String, dynamic>> _getTeamGames({
    required int teamId,
    required Filter statusFilter,
    int? limit,
    bool dateDescending = false,
  }) {
    final query = _firestore
        .collection("games")
        .where(
          Filter.and(
            statusFilter,
            Filter.or(
              Filter("homeTeamId", isEqualTo: teamId),
              Filter("visitorTeamId", isEqualTo: teamId),
            ),
          ),
        )
        .orderBy("leagueDate", descending: dateDescending);

    return limit != null ? query.limit(limit) : query;
  }

  Query<Map<String, dynamic>> getAllTeamStandings() {
    return _firestore.collection("standings");
  }

  DocumentReference<Map<String, dynamic>> getTeamStandings(int teamId) {
    return _firestore.collection("standings").doc(teamId.toString());
  }

  Query<Map<String, dynamic>> getPlayoffRounds() {
    return _firestore.collection("playoffs");
  }
}
