import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/data/games/remote/games_remote_source.dart';

import '../../common/util/result.dart';
import 'game_model.dart';

class GamesRepository {
  final GamesRemoteDataSource _remoteSource;

  GamesRepository(this._remoteSource);

  Future<Result<List<Game>>> getTeamGames(int teamId) {
    return _remoteSource.getTeamGames(teamId).mapResult(
          (games) => games.mapList(Game.fromResponse),
        );
  }

  Future<Result<List<Game>>> getLeagueGames(DateTime date) {
    return _remoteSource.getLeagueGames(date).mapResult(
          (games) => games.mapList(Game.fromResponse),
        );
  }
}
