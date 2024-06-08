import 'package:cloud_firestore/cloud_firestore.dart';

class AppFirebaseDb {
  final FirebaseFirestore _firestore;

  AppFirebaseDb(this._firestore);

  Query<Map<String, dynamic>> getTeamsCollection() =>
      _firestore.collection("teams").orderBy("id");

  DocumentReference<Map<String, dynamic>> getTeamDoc(int teamId) =>
      _firestore.doc("teams/$teamId");

  Query<Map<String, dynamic>> getLeagueGames(DateTime date) {
    final formattedDate = "${date.year}-"
        "${date.month.toString().padLeft(2, "0")}-"
        "${date.day.toString().padLeft(2, "0")}";
    return _firestore
        .collection("games")
        .where("date", isEqualTo: formattedDate);
  }

  Query<Map<String, dynamic>> getTeamGames(int teamId) {
    return _firestore.collection("games").where(
          Filter.or(
            Filter("homeTeamId", isEqualTo: teamId),
            Filter("visitorTeamId", isEqualTo: teamId),
          ),
        );
  }
}
