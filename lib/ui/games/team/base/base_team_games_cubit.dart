import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/domain/standings/get_standings.dart';
import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:flutternba/ui/util/bloc/base_cubit.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseTeamGamesCubit<State> extends BaseCubit<State> {
  static const int _displayedUpcomingGames = 5;

  final GetStandingsUseCase _getStandingsUseCase;

  @protected
  final BehaviorSubject<bool> expandUpcomingGames =
      BehaviorSubject.seeded(false);

  BaseTeamGamesCubit(super.initial, this._getStandingsUseCase) {
    disposeControllersOnClose([expandUpcomingGames]);
  }

  @protected
  Stream<TeamGamesState> buildTeamGamesStateStream({
    required int teamId,
    required Stream<Result<List<GameItem>>?> gamesStream,
  }) {
    return CombineLatestStream.combine3(
      gamesStream,
      _getStandingsUseCase.getTeams().asNullableStream().startWith(null),
      expandUpcomingGames,
      (loadResult, leagueStandings, expandUpcoming) => mapToState(
        teamId,
        loadResult,
        leagueStandings,
        expandUpcoming,
      ),
    );
  }

  @protected
  TeamGamesState mapToState(
    int teamId,
    Result<List<GameItem>>? loadGamesResult,
    Result<List<TeamStandings>>? leagueStandings,
    bool expandUpcoming,
  ) {
    return loadGamesResult?.fold(
          onSuccess: (games) => _createGamesState(
            games,
            teamId,
            expandUpcoming,
            leagueStandings,
          ),
          onFailure: (_) => const TeamGamesState.error(),
        ) ??
        const TeamGamesState.loading();
  }

  TeamGamesState _createGamesState(
    List<GameItem> games,
    int teamId,
    bool expandUpcoming,
    Result<List<TeamStandings>>? leagueStandings,
  ) {
    if (games.isEmpty) {
      return const TeamGamesState.noGamesAvailable();
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

    return TeamGamesState.displayData(
      nextGame: upcomingGames.getOrNull(0),
      previousGame: pastGames.getOrNull(0),
      upcomingGames: displayedUpcomingGames,
      previousGames: pastGames,
      teamId: teamId,
      hasHiddenUpcomingGames:
          upcomingGames.length > displayedUpcomingGames.length,
      standings: teamStandings,
    );
  }

  void showAllUpcoming() {
    expandUpcomingGames.value = true;
  }
}
