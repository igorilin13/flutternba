import 'package:cloud_firestore/cloud_firestore.dart';

class AppFirebaseDb {
  final FirebaseFirestore _firestore;

  AppFirebaseDb(this._firestore);

  Query<Map<String, dynamic>> getTeamsCollection() =>
      _firestore.collection("teams").orderBy("id");

  DocumentReference<Map<String, dynamic>> getTeamDoc(int teamId) =>
      _firestore.doc("teams/$teamId");
}
