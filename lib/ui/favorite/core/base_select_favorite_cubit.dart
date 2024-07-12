import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/teams/team_model.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/ui/core/cubit/base_cubit.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseSelectFavoriteTeamCubit
    extends BaseCubit<SelectFavoriteTeamState> {
  final TeamsRepository _teamsRepository;
  @protected
  final SettingsRepository settingsRepository;

  final BehaviorSubject<bool> _isConfirmingSelection =
      BehaviorSubject.seeded(false);

  BaseSelectFavoriteTeamCubit(
    this._teamsRepository,
    this.settingsRepository,
  ) : super(const SelectFavoriteTeamState.loading()) {
    disposeControllersOnClose([_isConfirmingSelection]);
  }

  @override
  Stream<SelectFavoriteTeamState> buildStateStream() {
    return CombineLatestStream.combine2(
      _teamsRepository.getTeams().asLoadingStream(),
      _isConfirmingSelection,
      _mapToState,
    );
  }

  SelectFavoriteTeamState _mapToState(
    Result<List<Team>>? teamsResult,
    bool isConfirmingSelection,
  ) {
    if (teamsResult == null) {
      return const SelectFavoriteTeamState.loading();
    }

    return teamsResult.fold(
      onSuccess: (teams) => SelectFavoriteTeamState.display(
        teams,
        isConfirmingSelection,
      ),
      onFailure: (_) => const SelectFavoriteTeamState.error(),
    );
  }

  Future<bool> confirmSelection(int? teamId) async {
    _isConfirmingSelection.add(true);

    bool isSuccess = teamId == null;
    if (teamId != null) {
      isSuccess = await _saveSelectedTeam(teamId);
    }
    await onSelectionConfirmed();

    return isSuccess;
  }

  @protected
  Future<void> onSelectionConfirmed() async {}

  Future<bool> _saveSelectedTeam(int teamId) {
    return settingsRepository.setFavoriteTeam(teamId);
  }
}
