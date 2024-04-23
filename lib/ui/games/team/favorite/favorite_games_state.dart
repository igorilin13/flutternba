import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_games_state.freezed.dart';

@freezed
sealed class FavoriteTeamGamesState with _$FavoriteTeamGamesState {
  const factory FavoriteTeamGamesState.loading() = LoadingFavoriteTeamState;

  const factory FavoriteTeamGamesState.noFavorite() = NoFavoriteTeamState;

  const factory FavoriteTeamGamesState.hasFavorite(TeamGamesState gamesState) =
      HasFavoriteTeamState;
}
