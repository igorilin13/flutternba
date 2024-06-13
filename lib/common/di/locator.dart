import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/data/settings/settings_local_source.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/domain/date/game_time_formatter.dart';
import 'package:flutternba/domain/date/get_league_dates.dart';
import 'package:flutternba/domain/games/league/get_league_games.dart';
import 'package:flutternba/domain/games/team/team_games_use_case.dart';
import 'package:flutternba/domain/standings/standings_use_case.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  locator.registerSingletonAsync(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => SettingsLocalDataSource(locator()));
  locator.registerLazySingleton(() => SettingsRepository(locator()));

  locator.registerLazySingleton(() => FirebaseFirestore.instance);
  locator.registerFactory(() => AppFirebaseDb(locator()));
  locator.registerLazySingleton(() => TeamsRepository(locator()));

  locator.registerFactory(() => GamesRepository(locator()));

  locator.registerFactory(() => FormatGameTimeUseCase());
  locator.registerFactory(() => GetLeagueDatesUseCase());
  locator.registerFactory(
    () => GetLeagueGamesUseCase(locator(), locator(), locator()),
  );
  locator.registerFactory(
    () => TeamGamesUseCase(locator(), locator(), locator()),
  );

  locator.registerFactory(() => StandingsUseCase(locator()));
  locator.registerLazySingleton(() => StandingsRepository(locator()));

  await locator.allReady();
}
