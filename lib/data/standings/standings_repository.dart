import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/standings/standings_model.dart';

class StandingsRepository {
  final AppFirebaseDb _db;

  StandingsRepository(this._db);

  Future<Result<List<TeamStandings>>> getAllTeams() {
    return _db.getAllTeamStandings().getResult(
          (doc) => TeamStandings.fromJson(doc.data()),
          throwIfEmpty: true,
        );
  }

  Future<Result<TeamStandings>> getTeam(int teamId) {
    return _db.getTeamStandings(teamId).getResult(
          (doc) => TeamStandings.fromJson(doc.data()!),
        );
  }
}
