import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/common/paged_data.dart';

import '../../common/util/result.dart';
import 'game_model.dart';

class GamesRepository {
  final AppFirebaseDb _db;

  GamesRepository(this._db);

  Future<Result<List<Game>>> getLiveOrScheduledTeamGames(
    int teamId,
    int? limit,
  ) {
    return _db
        .getLiveOrScheduledTeamGames(teamId, limit)
        .getResult((doc) => Game.fromJson(doc.data()));
  }

  Future<Result<PagedData<Game, GamesPageKey>>> getFinishedTeamGames(
    int teamId,
    int? limit,
    GamesPageKey? pageKey,
  ) {
    return _db
        .getFinishedTeamGames(teamId, limit, pageKey)
        .getPagedResult((doc) => Game.fromJson(doc.data()));
  }

  Future<Result<List<Game>>> getLeagueGames(DateTime date) {
    return _db
        .getLeagueGames(date)
        .getResult((doc) => Game.fromJson(doc.data()));
  }

  Future<Result<List<Game>>> getPlayoffSeriesGames(String seriesId) {
    return _db
        .getPlayoffSeriesGames(seriesId)
        .getResult((doc) => Game.fromJson(doc.data()), throwIfEmpty: true);
  }
}
