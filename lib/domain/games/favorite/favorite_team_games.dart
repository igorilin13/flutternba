import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/util/result.dart';
import '../game_item.dart';

part 'favorite_team_games.freezed.dart';

@freezed
sealed class FavoriteTeamGamesResult with _$FavoriteTeamGamesResult {
  const factory FavoriteTeamGamesResult.noFavorite() = NoFavoriteTeam;

  const factory FavoriteTeamGamesResult.hasFavorite(
    Result<List<GameItem>>? games,
    int teamId,
  ) = HasFavoriteTeam;
}
