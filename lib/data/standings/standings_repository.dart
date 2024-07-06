import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/standings/standings_model.dart';

class StandingsRepository {
  final AppFirebaseDb _db;
  final Map<int, TeamStandings> _cache = {};
  bool hasAllTeamsCached = false;

  StandingsRepository(this._db);

  Future<Result<List<TeamStandings>>> getAllTeams() async {
    if (hasAllTeamsCached) {
      return Future.value(
        Result.success(_cache.values.toList(growable: false)),
      );
    }

    final fromDb = await _db.getAllTeamStandings().getResult(
          (doc) => TeamStandings.fromJson(doc.data()),
          throwIfEmpty: true,
        );

    return fromDb.onSuccess((teams) {
      _cache.clear();
      for (var team in teams) {
        _cache[team.id] = team;
      }
      hasAllTeamsCached = true;
    });
  }

  Future<Result<TeamStandings>> getTeam(int teamId) async {
    final cached = _cache[teamId];
    if (cached != null) {
      return Future.value(Result.success(cached));
    }

    final fromDb = await _db
        .getTeamStandings(teamId)
        .getResult((doc) => TeamStandings.fromJson(doc.data()!));

    return fromDb.onSuccess((value) {
      _cache[teamId] = value;
    });
  }
}
