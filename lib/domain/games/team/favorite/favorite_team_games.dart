import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_team_games.freezed.dart';

@freezed
sealed class FavoriteTeamGamesResult with _$FavoriteTeamGamesResult {
  const factory FavoriteTeamGamesResult.noFavorite() = NoFavoriteTeam;

  const factory FavoriteTeamGamesResult.hasFavorite(
    Result<List<GameItem>>? games,
    int teamId,
  ) = HasFavoriteTeam;
}
