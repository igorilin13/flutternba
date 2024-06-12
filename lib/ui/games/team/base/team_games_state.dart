import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/paged_data.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_games_state.freezed.dart';

@freezed
sealed class TeamGamesState with _$TeamGamesState {
  const factory TeamGamesState.initialLoading() = InitialLoadingState;

  const factory TeamGamesState.noGamesAvailable() = NoGamesAvailableState;

  const factory TeamGamesState.displayData({
    required int teamId,
    required GameItem? nextGame,
    required GameItem? previousGame,
    required List<GameItem> upcomingGames,
    required bool hasHiddenUpcomingGames,
    required bool isLoadingUpcomingGames,
    required Object? upcomingGamesError,
    required PagedData<GameItem, GamesPageKey>? previousGames,
    required Object? previousGamesPageError,
    required Result<TeamStandings>? standings,
  }) = DisplayDataState;
}
