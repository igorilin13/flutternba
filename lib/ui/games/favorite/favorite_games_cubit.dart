import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/favorite/get_favorite_games.dart';
import 'package:flutternba/domain/standings/get_standings.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/games/favorite/favorite_team_games.dart';
import '../../../domain/games/game_item.dart';
import '../../util/bloc/base_cubit.dart';
import 'favorite_games_state.dart';

class FavoriteTeamGamesCubit extends BaseCubit<FavoriteTeamGamesState> {
  static const int _displayedUpcomingGames = 5;

  final GetFavoriteTeamGamesUseCase _getFavoriteTeamGamesUseCase;
  final GetStandingsUseCase _getStandingsUseCase;

  final BehaviorSubject<bool> _expandUpcomingGames =
      BehaviorSubject.seeded(false);

  FavoriteTeamGamesCubit(
    this._getFavoriteTeamGamesUseCase,
    this._getStandingsUseCase,
  ) : super(const FavoriteTeamGamesState.loading()) {
    disposeControllersOnClose([_expandUpcomingGames]);
  }

  @override
  Stream<FavoriteTeamGamesState> buildStateStream() {
    return CombineLatestStream.combine3(
      _getFavoriteTeamGamesUseCase(),
      _getStandingsUseCase.getTeams().asNullableStream().startWith(null),
      _expandUpcomingGames,
      (loadResult, leagueStandings, expandUpcoming) => switch (loadResult) {
        NoFavoriteTeam() => const FavoriteTeamGamesState.noFavorite(),
        HasFavoriteTeam() => loadResult.games?.fold(
              onSuccess: (games) => createDisplayDataState(
                games,
                loadResult.teamId,
                expandUpcoming,
                leagueStandings,
              ),
              onFailure: (_) => const FavoriteTeamGamesState.error(),
            ) ??
            const FavoriteTeamGamesState.loading(),
      },
    );
  }

  FavoriteTeamGamesState createDisplayDataState(
    List<GameItem> games,
    int teamId,
    bool expandUpcoming,
    Result<List<TeamStandings>>? leagueStandings,
  ) {
    if (games.isEmpty) {
      return const FavoriteTeamGamesState.noGamesAvailable();
    }

    final pastGames = games.filterList(
      (element) => element.game.gameStatus == GameStatus.finished,
    );
    pastGames.sortByDescending((item) => item.game.date);

    final upcomingGames = games.filterList(
      (element) => element.game.gameStatus != GameStatus.finished,
    );
    final displayedUpcomingGames = expandUpcoming
        ? upcomingGames
        : upcomingGames.takeList(_displayedUpcomingGames);
    final teamStandings = leagueStandings?.map(
      (value) => value.firstWhere((item) => item.teamId == teamId),
    );

    return FavoriteTeamGamesState.displayData(
      nextGame: upcomingGames.getOrNull(0),
      previousGame: pastGames.getOrNull(0),
      upcomingGames: displayedUpcomingGames,
      previousGames: pastGames,
      favoriteTeamId: teamId,
      hasHiddenUpcomingGames:
          upcomingGames.length > displayedUpcomingGames.length,
      standings: teamStandings,
    );
  }

  void showAllUpcoming() {
    _expandUpcomingGames.value = true;
  }
}
