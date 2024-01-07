import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/ui/favorite/onboarding/onboarding_state.dart';

import '../../../common/util/result.dart';
import '../../../data/teams/team_model.dart';
import '../../../data/teams/team_repository.dart';

class SelectTeamOnboardingProvider with ChangeNotifier {
  final TeamsRepository _teamsRepository;
  final SettingsRepository _settingsRepository;

  Result<List<Team>>? _teamsResult;
  int? _selectedTeamId;

  SelectTeamOnboardingState _state = LoadingState();
  final StreamController<SelectTeamOnboardingEvent> _uiEvents =
      StreamController();

  SelectTeamOnboardingState get state => _state;

  Stream<SelectTeamOnboardingEvent> get uiEvents => _uiEvents.stream;

  SelectTeamOnboardingProvider(
    this._teamsRepository,
    this._settingsRepository,
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
            onFailure: (_) => ErrorState()) ??
        LoadingState();

    notifyListeners();
  }

  void skipOnboarding() async {
    await _settingsRepository.setOnboardingComplete(true);
    _uiEvents.add(OnboardingCompleteEvent());
  }

  void confirmSelection() async {
    final selectedTeamId = _selectedTeamId;
    if (selectedTeamId != null) {
      await _settingsRepository.setFavoriteTeam(selectedTeamId);
    }

    await _settingsRepository.setOnboardingComplete(true);
    _uiEvents.add(OnboardingCompleteEvent());
  }
}
