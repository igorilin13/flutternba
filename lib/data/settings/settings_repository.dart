import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutternba/data/settings/settings_local_source.dart';

class SettingsRepository {
  final SettingsLocalDataSource _localDataSource;
  final FirebaseMessaging _firebaseMessaging;
  final FirebaseCrashlytics _crashlytics;

  SettingsRepository(
    this._localDataSource,
    this._firebaseMessaging,
    this._crashlytics,
  );

  bool isOnboardingComplete() =>
      _localDataSource.isOnboardingComplete() ?? false;

  Future<void> setOnboardingComplete(bool value) =>
      _localDataSource.setOnboardingComplete(value);

  Stream<int?> getFavoriteTeamId() => _localDataSource.getFavoriteTeamId();

  Future<bool> setFavoriteTeam(int id) async {
    try {
      final currentRemindersTopic =
          await _localDataSource.getGameRemindersTopic().first;

      if (currentRemindersTopic != null) {
        final currentTeamId = await _localDataSource.getFavoriteTeamId().first;
        if (currentTeamId != null && currentTeamId != id) {
          await _turnOffReminders(currentRemindersTopic);
          await _turnOnReminders(id);
        }
      }

      await _localDataSource.setFavoriteTeam(id);
      return true;
    } catch (e, stack) {
      await _crashlytics.recordError(e, stack);
      return false;
    }
  }

  Stream<bool> shouldHideScores() =>
      _localDataSource.shouldHideScores().map((event) => event ?? false);

  Future<void> setHideScores(bool value) =>
      _localDataSource.setHideScores(value);

  Stream<bool> areGameRemindersOn() =>
      _localDataSource.getGameRemindersTopic().map((value) => value != null);

  Future<void> setGameReminders(bool isTurnedOn) async {
    try {
      if (isTurnedOn) {
        final teamId = await _localDataSource.getFavoriteTeamId().first;
        if (teamId != null) {
          await _turnOnReminders(teamId);
        }
      } else {
        final subscribedTopic =
            await _localDataSource.getGameRemindersTopic().first;
        if (subscribedTopic != null) {
          await _turnOffReminders(subscribedTopic);
        }
      }
    } catch (e, stack) {
      await _crashlytics.recordError(e, stack);
    }
  }

  Future<void> _turnOnReminders(int teamId) async {
    final topic = _buildGameRemindersTopicName(teamId);
    await _firebaseMessaging.subscribeToTopic(topic);
    await _localDataSource.setGameRemindersTopic(topic);
  }

  Future<void> _turnOffReminders(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
    await _localDataSource.setGameRemindersTopic(null);
  }

  String _buildGameRemindersTopicName(int teamId) => 'reminders_$teamId';
}
