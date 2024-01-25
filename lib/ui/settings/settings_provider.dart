import 'package:flutter/material.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/ui/settings/settings_state.dart';

class SettingsProvider with ChangeNotifier {
  final SettingsRepository _settingsRepository;
  final TeamsRepository _teamsRepository;

  SettingsState _state = SettingsState(
    shouldHideScores: null,
    favoriteTeamState: LoadingFavoriteTeamState(),
  );

  SettingsState get state => _state;

  SettingsProvider(this._settingsRepository, this._teamsRepository) {
    loadSettings();
  }

  void loadSettings() async {
    final favoriteTeamId = _settingsRepository.getFavoriteTeamId();
    final FavoriteTeamSettingState favoriteTeamState;
    if (favoriteTeamId != null) {
      favoriteTeamState = (await _teamsRepository.getTeam(favoriteTeamId)).fold(
        onSuccess: (team) => HasFavoriteTeamState(team),
        onFailure: (_) => FavoriteTeamErrorState(),
      );
    } else {
      favoriteTeamState = NoFavoriteTeamState();
    }

    final hideScores = _settingsRepository.shouldHideScores();

    _state = SettingsState(
      shouldHideScores: hideScores,
      favoriteTeamState: favoriteTeamState,
    );
    notifyListeners();
  }

  void setHideScores(bool value) async {
    await _settingsRepository.setHideScores(value);
    _state = SettingsState(
      shouldHideScores: value,
      favoriteTeamState: _state.favoriteTeamState,
    );
    notifyListeners();
  }
}
