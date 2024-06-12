import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/paged_data.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/domain/games/team/team_games_use_case.dart';
import 'package:flutternba/domain/standings/get_standings.dart';
import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:flutternba/ui/util/bloc/base_cubit.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseTeamGamesCubit<State> extends BaseCubit<State> {
  static const int _displayedUpcomingGames = 6;
  static const int _finishedGamesPageSize = 10;

  final TeamGamesUseCase _getTeamGamesUseCase;
  final GetStandingsUseCase _getStandingsUseCase;

  final CompositeSubscription _perTeamSubscriptions = CompositeSubscription();

  late int teamId;

  @protected
  final BehaviorSubject<bool> expandUpcomingGames =
      BehaviorSubject.seeded(false);
  final BehaviorSubject<bool> _isLoadingUpcomingGames =
      BehaviorSubject.seeded(false);
  final BehaviorSubject<Result<List<GameItem>>?> _upcomingGamesResult =
      BehaviorSubject.seeded(null);
  final BehaviorSubject<int> _upcomingGamesRetrySubject =
      BehaviorSubject.seeded(0);

  final BehaviorSubject<GamesPageKey?> _finishedGamesRequestKey =
      BehaviorSubject.seeded(null);
  final BehaviorSubject<PagedData<GameItem, GamesPageKey>?> _finishedGames =
      BehaviorSubject.seeded(null);
  final BehaviorSubject<Object?> _finishedGamesPageError =
      BehaviorSubject.seeded(null);
  final BehaviorSubject<int> _finishedGamesRetrySubject =
      BehaviorSubject.seeded(0);

  BaseTeamGamesCubit(
    super.initial,
    this._getTeamGamesUseCase,
    this._getStandingsUseCase,
  ) {
    disposeControllersOnClose([
      expandUpcomingGames,
      _isLoadingUpcomingGames,
      _upcomingGamesResult,
      _upcomingGamesRetrySubject,
      _finishedGamesRequestKey,
      _finishedGamesPageError,
      _finishedGames,
      _finishedGamesRetrySubject,
    ]);
  }

  @protected
  Stream<TeamGamesState> buildTeamGamesStateStream(int teamId) {
    this.teamId = teamId;
    _listenToDataLoadRequests(teamId);

    return CombineLatestStream.combine6(
      _upcomingGamesResult,
      _isLoadingUpcomingGames,
      expandUpcomingGames,
      _finishedGames,
      _finishedGamesPageError,
      _getStandingsUseCase.getTeams().asNullableStream().startWith(null),
      mapToState,
    );
  }

  void _listenToDataLoadRequests(int teamId) {
    _upcomingGamesResult.add(null);
    _finishedGames.add(null);
    _finishedGamesPageError.add(null);
    _finishedGamesRequestKey.add(null);
    _perTeamSubscriptions.clear();

    final upcomingGameSubscription =
        expandUpcomingGames.switchMap((showAllUpcoming) {
      return _upcomingGamesRetrySubject.doOnData((_) {
        _isLoadingUpcomingGames.value = true;
      }).switchMap(
        (_) => _getTeamGamesUseCase.getLiveOrScheduled(
          teamId: teamId,
          limit: showAllUpcoming ? null : _displayedUpcomingGames + 1,
        ),
      );
    }).listen((loadResult) {
      _upcomingGamesResult.value = loadResult;
      _isLoadingUpcomingGames.value = false;
    });
    _perTeamSubscriptions.add(upcomingGameSubscription);

    final finishedGamesById = <int, GameItem>{};
    final nextPageKeyByPreviousKey = <GamesPageKey?, GamesPageKey?>{};
    final finishedGamesSubscription =
        _finishedGamesRequestKey.distinctUnique().flatMap((pageKey) {
      return _finishedGamesRetrySubject
          .switchMap(
            (_) => _getTeamGamesUseCase.getFinished(
              teamId: teamId,
              limit: _finishedGamesPageSize,
              pageKey: pageKey,
            ),
          )
          .doOnData(
            (pageResult) => pageResult.onFailure((error) {
              _finishedGamesPageError.value = error;
            }).onSuccess((page) {
              for (var item in page.items) {
                finishedGamesById[item.game.id] = item;
              }
              nextPageKeyByPreviousKey[pageKey] = page.nextKey;
              _finishedGames.value = PagedData(
                items: finishedGamesById.values
                    .sortedByDescending((item) => item.game.leagueDate),
                nextKey:
                    nextPageKeyByPreviousKey[_finishedGamesRequestKey.value],
              );
            }),
          );
    }).listen((_) {});
    _perTeamSubscriptions.add(finishedGamesSubscription);
  }

  @protected
  TeamGamesState mapToState(
    Result<List<GameItem>>? upcomingGamesResult,
    bool isLoadingUpcoming,
    bool expandUpcoming,
    PagedData<GameItem, GamesPageKey>? finishedGames,
    Object? finishedGamesPageError,
    Result<List<TeamStandings>>? leagueStandings,
  ) {
    if (upcomingGamesResult == null &&
        finishedGames == null &&
        leagueStandings == null) {
      return const TeamGamesState.initialLoading();
    }

    final upcomingGames = upcomingGamesResult?.valueOrNull;
    if (upcomingGamesResult?.isSuccess == true &&
        upcomingGames?.isEmpty == true &&
        finishedGamesPageError == null &&
        finishedGames?.items.isEmpty == true) {
      return const TeamGamesState.noGamesAvailable();
    }

    final displayedUpcomingGames = expandUpcoming
        ? upcomingGames ?? []
        : upcomingGames?.takeList(_displayedUpcomingGames) ?? [];
    final teamStandings = leagueStandings?.map(
      (value) => value.firstWhere((item) => item.teamId == teamId),
    );

    final finishedGamesData = finishedGames != null
        ? PagedData(
            items: finishedGames.items.length > 1
                ? finishedGames.items.sublist(1)
                : <GameItem>[],
            nextKey: finishedGames.nextKey,
          )
        : null;

    return TeamGamesState.displayData(
      teamId: teamId,
      nextGame: displayedUpcomingGames.getOrNull(0),
      previousGame: finishedGames?.items.getOrNull(0),
      upcomingGames: displayedUpcomingGames.length > 1
          ? displayedUpcomingGames.sublist(1)
          : [],
      hasHiddenUpcomingGames:
          (upcomingGames?.length ?? 0) > displayedUpcomingGames.length,
      isLoadingUpcomingGames: isLoadingUpcoming,
      upcomingGamesError: upcomingGamesResult?.errorOrNull,
      previousGames: finishedGamesData,
      previousGamesPageError: finishedGamesPageError,
      standings: teamStandings,
    );
  }

  void showAllUpcoming() {
    expandUpcomingGames.value = true;
  }

  void loadNextFinishedGamesPage(GamesPageKey? pageKey) {
    _finishedGamesRequestKey.value = pageKey;
  }

  void retryLoadingUpcoming() {
    _upcomingGamesResult.value = null;
    _upcomingGamesRetrySubject.value++;
  }

  void retryLoadingFinished() {
    _finishedGamesPageError.value = null;
    _finishedGamesRetrySubject.value++;
  }

  @override
  Future<void> close() {
    _perTeamSubscriptions.clear();
    return super.close();
  }
}
