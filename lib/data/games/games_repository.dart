import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/common/firestore/firestore_ext.dart';
import 'package:flutternba/data/games/remote/game_response.dart';

import '../../common/util/result.dart';
import 'game_model.dart';

class GamesRepository {
  final AppFirebaseDb _db;

  GamesRepository(this._db);

  Future<Result<List<Game>>> getTeamGames(int teamId) {
    return _db.getTeamGames(teamId).getResult(
          (doc) => Game.fromResponse(GameResponse.fromJson(doc.data())),
          throwIfEmpty: false,
        );
  }

  Future<Result<List<Game>>> getLeagueGames(DateTime date) {
    return _db.getLeagueGames(date).getResult(
          (doc) => Game.fromResponse(GameResponse.fromJson(doc.data())),
          throwIfEmpty: false,
        );
  }
}
