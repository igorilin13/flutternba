import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/teams/team_model.dart';

import '../../common/util/result.dart';

class TeamsRepository {
  final AppFirebaseDb _db;

  TeamsRepository(this._db);

  Future<Result<List<Team>>> getTeams() {
    return _db.getTeamsCollection().getResult(
          (doc) => Team.fromJson(doc.data()),
          throwIfEmpty: true,
        );
  }

  Future<Result<Team>> getTeam(int teamId) async {
    return _db
        .getTeamDoc(teamId)
        .getResult((doc) => Team.fromJson(doc.data()!));
  }
}
