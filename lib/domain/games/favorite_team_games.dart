import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/domain/games/game_item.dart';

sealed class FavoriteTeamGamesResult {}

class NoFavoriteTeam extends FavoriteTeamGamesResult {}

class HasFavoriteTeam extends FavoriteTeamGamesResult {
  final Result<List<GameItem>> games;

  HasFavoriteTeam(this.games);
}