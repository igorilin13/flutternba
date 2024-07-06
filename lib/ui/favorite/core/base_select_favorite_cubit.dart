import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/teams/team_model.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/ui/core/cubit/base_cubit.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';

abstract class BaseSelectFavoriteTeamCubit
    extends BaseCubit<SelectFavoriteTeamState> {
  final TeamsRepository _teamsRepository;
  @protected
  final SettingsRepository settingsRepository;

  BaseSelectFavoriteTeamCubit(
    this._teamsRepository,
    this.settingsRepository,
  ) : super(const SelectFavoriteTeamState.loading());

  @override
  Stream<SelectFavoriteTeamState> buildStateStream() {
    return _teamsRepository.getTeams().asLoadingStream().map(_mapToState);
  }

  SelectFavoriteTeamState _mapToState(Result<List<Team>>? teamsResult) {
    return teamsResult?.fold(
          onSuccess: (teams) => SelectFavoriteTeamState.display(teams),
          onFailure: (_) => const SelectFavoriteTeamState.error(),
        ) ??
        const SelectFavoriteTeamState.loading();
  }

  Future<void> confirmSelection(int? teamId);

  @protected
  Future<void> saveSelectedTeam(int teamId) {
    return settingsRepository.setFavoriteTeam(teamId);
  }
}
