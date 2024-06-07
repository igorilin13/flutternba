import 'package:dio/dio.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/data/common/network/ball/ball_api_service.dart';
import 'package:flutternba/data/common/network/ball/ball_auth_interceptor.dart';
import 'package:flutternba/data/common/network/sportsio/sportsio_api_service.dart';
import 'package:flutternba/data/common/network/sportsio/sportsio_auth_interceptor.dart';
import 'package:flutternba/data/common/network/team_mapping.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/data/games/remote/games_remote_source.dart';
import 'package:flutternba/data/settings/settings_local_source.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/standings/remote/standings_remote_source.dart';
import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/domain/date/game_time_formatter.dart';
import 'package:flutternba/domain/date/get_league_dates.dart';
import 'package:flutternba/domain/games/league/get_league_games.dart';
import 'package:flutternba/domain/games/team/favorite/get_favorite_games.dart';
import 'package:flutternba/domain/games/team/get_team_games.dart';
import 'package:flutternba/domain/standings/get_standings.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  locator.registerLazySingleton(
    () => _createDio(
      AppConfig.ballApiUrl,
      BallAuthInterceptor(AppConfig.ballApiKey),
    ),
    instanceName: "ballApi",
  );
  locator.registerLazySingleton(
    () => _createDio(
      AppConfig.sportsIoApiUrl,
      SportsIoAuthInterceptor(AppConfig.sportsIoApiKey),
    ),
    instanceName: "sportsIoApi",
  );
  locator.registerLazySingleton(
    () => BallApiService(locator.get(instanceName: "ballApi")),
  );
  locator.registerLazySingleton(
    () => SportsIoApiService(locator.get(instanceName: "sportsIoApi")),
  );

  locator.registerSingletonAsync(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => SettingsLocalDataSource(locator()));
  locator.registerLazySingleton(() => SettingsRepository(locator()));

  locator.registerFactory(() => TeamsRemoteDataSource(locator()));
  locator.registerLazySingleton(() => TeamsRepository(locator()));

  locator.registerFactory(() => GamesRemoteDataSource(locator()));
  locator.registerFactory(() => GamesRepository(locator()));

  locator.registerFactory(() => FormatGameTimeUseCase());
  locator.registerFactory(() => GetLeagueDatesUseCase());
  locator.registerFactory(
    () => GetFavoriteTeamGamesUseCase(
      locator(),
      locator(),
      locator(),
      locator(),
    ),
  );
  locator.registerFactory(
    () => GetLeagueGamesUseCase(locator(), locator(), locator()),
  );
  locator.registerFactory(
    () => GetTeamGamesUseCase(locator(), locator(), locator()),
  );

  locator.registerFactory(() => GetStandingsUseCase(locator()));
  locator.registerFactory(() => TeamIdMapping());
  locator.registerFactory(() => StandingsRemoteSource(locator(), locator()));
  locator.registerLazySingleton(() => StandingsRepository(locator()));

  await locator.allReady();
}

Dio _createDio(String url, Interceptor authInterceptor) {
  return Dio(BaseOptions(baseUrl: url))
    ..interceptors.add(LogInterceptor(
      request: false,
      requestHeader: false,
      responseHeader: true,
    ))
    ..interceptors.add(authInterceptor);
}
