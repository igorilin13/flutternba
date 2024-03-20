import 'package:dio/dio.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/data/common/db/app_db.dart';
import 'package:flutternba/data/common/network/api_service.dart';
import 'package:flutternba/data/common/network/auth_interceptor.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/data/games/remote/games_remote_source.dart';
import 'package:flutternba/data/settings/settings_local_source.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/teams/local/teams_local_source.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/domain/date/date_formatter.dart';
import 'package:flutternba/domain/games/favorite/get_favorite_games.dart';
import 'package:flutternba/domain/games/league/get_league_games.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  locator.registerLazySingleton(() => _createDio());
  locator.registerLazySingleton(
    () => ApiService(locator()),
  );

  locator.registerSingletonAsync(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => AppDatabase());
  locator.registerLazySingleton(() => SettingsLocalDataSource(locator()));
  locator.registerLazySingleton(() => SettingsRepository(locator()));

  locator.registerFactory(() => TeamsRemoteDataSource(locator()));
  locator.registerFactory(() => TeamsLocalDataSource(locator()));
  locator.registerLazySingleton(() => TeamsRepository(locator(), locator()));

  locator.registerFactory(() => GamesRemoteDataSource(locator()));
  locator.registerFactory(() => GamesRepository(locator()));

  locator.registerFactory(() => FormatGameDateUseCase());
  locator.registerFactory(
    () => GetFavoriteTeamGamesUseCase(locator(), locator(), locator()),
  );
  locator.registerFactory(
    () => GetLeagueGamesUseCase(locator(), locator()),
  );

  await locator.allReady();
}

Dio _createDio() {
  return Dio(BaseOptions(baseUrl: AppConfig.apiUrl))
    ..interceptors.add(LogInterceptor(
      request: false,
      requestHeader: false,
      responseHeader: true,
    ))
    ..interceptors.add(AuthInterceptor(AppConfig.apiKey));
}
