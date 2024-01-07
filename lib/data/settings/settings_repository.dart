import 'package:flutternba/data/settings/settings_local_source.dart';

class SettingsRepository {
  final SettingsLocalDataSource _localDataSource;

  SettingsRepository(this._localDataSource);

  bool isOnboardingComplete() =>
      _localDataSource.isOnboardingComplete() ?? false;

  Future<void> setOnboardingComplete(bool value) =>
      _localDataSource.setOnboardingComplete(value);

  Future<void> setFavoriteTeam(int id) => _localDataSource.setFavoriteTeam(id);

  Future<void> setHideScores(bool value) =>
      _localDataSource.setHideScores(value);
}
