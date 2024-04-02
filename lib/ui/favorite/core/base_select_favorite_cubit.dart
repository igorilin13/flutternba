import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';
import 'package:flutternba/ui/util/bloc/base_cubit.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/util/result.dart';
import '../../../data/settings/settings_repository.dart';
import '../../../data/teams/team_model.dart';
import '../../../data/teams/team_repository.dart';

abstract class BaseSelectFavoriteTeamCubit
    extends BaseCubit<SelectFavoriteTeamState> {
  final TeamsRepository _teamsRepository;
  @protected
  final SettingsRepository settingsRepository;

  final BehaviorSubject<bool> _selectionCompleteSubject =
      BehaviorSubject.seeded(false);

  BaseSelectFavoriteTeamCubit(
    this._teamsRepository,
    this.settingsRepository,
  ) : super(const SelectFavoriteTeamState.loading()) {
    disposeControllersOnClose([_selectionCompleteSubject]);
  }

  @override
  Stream<SelectFavoriteTeamState> buildStateStream() {
    return CombineLatestStream.combine2(
      _teamsRepository.getTeams().nullable().startWith(null),
      _selectionCompleteSubject.stream,
      _mapToState,
    );
  }

  SelectFavoriteTeamState _mapToState(
    Result<List<Team>>? teamsResult,
    bool selectionComplete,
  ) {
    return teamsResult?.fold(
          onSuccess: (teams) => SelectFavoriteTeamState.display(
            teams: teams,
            selectionComplete: selectionComplete,
          ),
          onFailure: (_) => SelectFavoriteTeamState.error(
            selectionComplete: selectionComplete,
          ),
        ) ??
        SelectFavoriteTeamState.loading(selectionComplete: selectionComplete);
  }

  void confirmSelection(int? teamId);

  Future<void> saveSelectedTeam(int teamId) async {
    await settingsRepository.setFavoriteTeam(teamId);
  }

  @protected
  void completeSelection() {
    _selectionCompleteSubject.add(true);
  }
}
