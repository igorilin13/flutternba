import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';

import '../../../common/util/result.dart';
import '../../../data/settings/settings_repository.dart';
import '../../../data/teams/team_model.dart';
import '../../../data/teams/team_repository.dart';

abstract class BaseSelectFavoriteTeamProvider with ChangeNotifier {
  final TeamsRepository _teamsRepository;
  @protected
  final SettingsRepository settingsRepository;

  Result<List<Team>>? _teamsResult;
  int? _selectedTeamId;

  SelectFavoriteTeamState _state = LoadingState();

  @protected
  final StreamController<SelectFavoriteTeamEvent> uiEventsController =
      StreamController();

  SelectFavoriteTeamState get state => _state;

  Stream<SelectFavoriteTeamEvent> get uiEvents => uiEventsController.stream;

  BaseSelectFavoriteTeamProvider(
    this._teamsRepository,
    this.settingsRepository,
  ) {
    _loadTeams();
  }

  void _loadTeams() async {
    _teamsResult = await _teamsRepository.getTeams();
    _updateState();
  }

  void selectTeam(Team team) {
    _selectedTeamId = team.id;
    _updateState();
  }

  void _updateState() {
    _state = _teamsResult?.fold(
          onSuccess: (teams) =>
              DisplayState(teams: teams, selectedId: _selectedTeamId),
          onFailure: (_) => ErrorState(),
        ) ??
        LoadingState();

    notifyListeners();
  }

  void confirmSelection();

  Future<int?> saveSelectedTeam() async {
    final selectedTeamId = _selectedTeamId;
    if (selectedTeamId != null) {
      await settingsRepository.setFavoriteTeam(selectedTeamId);
    }
    return selectedTeamId;
  }
}
