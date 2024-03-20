import 'package:flutternba/domain/games/game_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_games_state.freezed.dart';

@freezed
sealed class FavoriteTeamGamesState with _$FavoriteTeamGamesState {
  const factory FavoriteTeamGamesState.loading() = LoadingState;
  const factory FavoriteTeamGamesState.error() = ErrorState;
  const factory FavoriteTeamGamesState.noFavorite() = NoFavoriteTeamState;
  const factory FavoriteTeamGamesState.noGamesAvailable() =
      NoGamesAvailableState;
  const factory FavoriteTeamGamesState.displayData({
    required GameItem? nextGame,
    required GameItem? previousGame,
    required List<GameItem> upcomingGames,
    required List<GameItem> previousGames,
  }) = DisplayDataState;
}
