import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/interface/disposable.dart';

class SettingsLocalDataSource implements Disposable {
  static const String _onboardingKey = "onboarding_completed";
  static const String _favoriteTeamIdKey = "favorite_team_id";
  static const String _hideScoresKey = "hide_scores";
  static const String _gameRemindersTopicKey = "game_reminders";

  final SharedPreferences _preferences;
  final BehaviorSubject<int?> _favoriteTeamIdSubject = BehaviorSubject();
  final BehaviorSubject<bool?> _hideScoresSubject = BehaviorSubject();
  final BehaviorSubject<String?> _gameRemindersTopicSubject = BehaviorSubject();

  SettingsLocalDataSource(this._preferences) {
    _favoriteTeamIdSubject.add(_preferences.getInt(_favoriteTeamIdKey));
    _hideScoresSubject.add(_preferences.getBool(_hideScoresKey));
    _gameRemindersTopicSubject.add(
      _preferences.getString(_gameRemindersTopicKey),
    );
  }

  bool? isOnboardingComplete() => _preferences.getBool(_onboardingKey);

  Future<void> setOnboardingComplete(bool value) async {
    await _preferences.setBool(_onboardingKey, value);
  }

  Stream<int?> getFavoriteTeamId() => _favoriteTeamIdSubject.stream;

  Future<void> setFavoriteTeam(int id) async {
    await _preferences.setInt(_favoriteTeamIdKey, id);
    _favoriteTeamIdSubject.add(id);
  }

  Stream<bool?> shouldHideScores() => _hideScoresSubject.stream;

  Future<void> setHideScores(bool value) async {
    await _preferences.setBool(_hideScoresKey, value);
    _hideScoresSubject.value = value;
  }

  Stream<String?> getGameRemindersTopic() => _gameRemindersTopicSubject.stream;

  Future<void> setGameRemindersTopic(String? value) async {
    if (value != null) {
      await _preferences.setString(_gameRemindersTopicKey, value);
    } else {
      await _preferences.remove(_gameRemindersTopicKey);
    }
    _gameRemindersTopicSubject.value = value;
  }

  @override
  void dispose() {
    _favoriteTeamIdSubject.close();
    _hideScoresSubject.close();
    _gameRemindersTopicSubject.close();
  }
}
