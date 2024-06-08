import 'package:cloud_firestore/cloud_firestore.dart';

class AppFirebaseDb {
  final FirebaseFirestore _firestore;

  AppFirebaseDb(this._firestore);

  CollectionReference<Map<String, dynamic>> getTeamsCollection() =>
      _firestore.collection("teams");

  DocumentReference<Map<String, dynamic>> getTeamDoc(int teamId) =>
      _firestore.doc("teams/$teamId");
}
