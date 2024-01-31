import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/data/games/remote/games_remote_source.dart';
import 'package:flutternba/data/settings/settings_local_source.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/domain/date/date_formatter.dart';
import 'package:flutternba/domain/games/favorite/get_favorite_games.dart';
import 'package:flutternba/domain/games/league/get_league_games.dart';
import 'package:get_it/get_it.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/data/common/network/network_service.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  locator.registerLazySingleton(() => http.Client());
  locator.registerLazySingleton(
    () => NetworkService(AppConfig.baseApiUrl, locator()),
  );

  locator.registerSingletonAsync(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => SettingsLocalDataSource(locator()));
  locator.registerLazySingleton(() => SettingsRepository(locator()));

  locator.registerFactory(() => TeamsRemoteDataSource(locator()));
  locator.registerFactory(() => TeamsRepository(locator()));

  locator.registerFactory(() => GamesRemoteDataSource(locator()));
  locator.registerFactory(() => GamesRepository(locator()));

  locator.registerFactory(() => FormatGameDateUseCase());
  locator.registerFactory(
    () => GetFavoriteTeamGamesUseCase(locator(), locator()),
  );
  locator.registerFactory(
    () => GetLeagueGamesUseCase(locator(), locator()),
  );

  await locator.allReady();
}
