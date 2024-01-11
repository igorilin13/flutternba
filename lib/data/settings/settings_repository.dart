import 'package:flutternba/data/settings/settings_local_source.dart';

class SettingsRepository {
  final SettingsLocalDataSource _localDataSource;

  SettingsRepository(this._localDataSource);

  bool isOnboardingComplete() =>
      _localDataSource.isOnboardingComplete() ?? false;

  Future<void> setOnboardingComplete(bool value) =>
      _localDataSource.setOnboardingComplete(value);

  int? getFavoriteTeamId() => _localDataSource.getFavoriteTeamId();

  Future<void> setFavoriteTeam(int id) => _localDataSource.setFavoriteTeam(id);

  bool shouldHideScores() => _localDataSource.shouldHideScores() ?? false;

  Future<void> setHideScores(bool value) =>
      _localDataSource.setHideScores(value);
}
