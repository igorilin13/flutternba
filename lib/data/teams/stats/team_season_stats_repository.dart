import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/teams/stats/team_season_stats_model.dart';

class TeamSeasonStatsRepository {
  final AppFirebaseDb _db;

  TeamSeasonStatsRepository(this._db);

  Future<Result<List<TeamSeasonStats>>> getTeams() {
    return _db.getTeamSeasonStats().getResult(
          (doc) => TeamSeasonStats.fromJson(doc.data()),
          throwIfEmpty: true,
        );
  }
}
