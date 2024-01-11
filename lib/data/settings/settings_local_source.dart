import 'package:shared_preferences/shared_preferences.dart';

class SettingsLocalDataSource {
  static const String _onboardingKey = "onboarding_completed";
  static const String _favoriteTeamIdKey = "favorite_team_id";
  static const String _hideScoresKey = "hide_scores";

  final SharedPreferences _preferences;

  SettingsLocalDataSource(this._preferences);

  bool? isOnboardingComplete() => _preferences.getBool(_onboardingKey);

  Future<void> setOnboardingComplete(bool value) async {
    await _preferences.setBool(_onboardingKey, value);
  }

  int? getFavoriteTeamId() => _preferences.getInt(_favoriteTeamIdKey);

  Future<void> setFavoriteTeam(int id) async {
    await _preferences.setInt(_favoriteTeamIdKey, id);
  }

  bool? shouldHideScores() => _preferences.getBool(_hideScoresKey);

  Future<void> setHideScores(bool value) async {
    await _preferences.setBool(_hideScoresKey, value);
  }
}