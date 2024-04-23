import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_games_state.freezed.dart';

@freezed
sealed class TeamGamesState with _$TeamGamesState {
  const factory TeamGamesState.loading() = LoadingState;

  const factory TeamGamesState.error() = ErrorState;

  const factory TeamGamesState.noGamesAvailable() = NoGamesAvailableState;

  const factory TeamGamesState.displayData({
    required GameItem? nextGame,
    required GameItem? previousGame,
    required List<GameItem> upcomingGames,
    required List<GameItem> previousGames,
    required int teamId,
    required bool hasHiddenUpcomingGames,
    required Result<TeamStandings>? standings,
  }) = DisplayDataState;
}
