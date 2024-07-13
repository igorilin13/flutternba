import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutternba/common/integrations/firebase_messaging.dart';
import 'package:flutternba/common/integrations/local_notifications.dart';
import 'package:flutternba/data/common/firebase_functions.dart';
import 'package:flutternba/data/common/firestore/firebase_db.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/data/scores/box_score_repository.dart';
import 'package:flutternba/data/settings/settings_local_source.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/data/standings/playoffs/playoffs_repository.dart';
import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:flutternba/domain/date/game_time_formatter.dart';
import 'package:flutternba/domain/date/get_league_dates.dart';
import 'package:flutternba/domain/games/league/get_league_games.dart';
import 'package:flutternba/domain/games/playoffs/get_playoff_series.dart';
import 'package:flutternba/domain/games/team/team_games_use_case.dart';
import 'package:flutternba/domain/standings/standings_use_case.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  locator.registerLazySingleton(
    () => LocalNotificationsIntegration(FlutterLocalNotificationsPlugin()),
  );
  locator.registerLazySingleton(() => FirebaseMessagingIntegration(locator()));

  locator.registerSingletonAsync(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => SettingsLocalDataSource(locator()));
  locator.registerLazySingleton(
    () => SettingsRepository(
      locator(),
      locator(),
      locator(),
    ),
  );

  locator.registerFactory(() => FirebaseFirestore.instance);
  locator.registerFactory(() => FirebaseFunctions.instance);
  locator.registerFactory(() => FirebaseMessaging.instance);
  locator.registerFactory(() => FirebaseCrashlytics.instance);
  locator.registerFactory(() => AppFirebaseDb(locator()));
  locator.registerFactory(() => FirebaseRemoteApi(locator()));

  locator.registerFactory(() => TeamsRepository(locator()));

  locator.registerFactory(() => GamesRepository(locator()));

  locator.registerFactory(() => FormatGameTimeUseCase());
  locator.registerFactory(() => GetLeagueDatesUseCase());
  locator.registerFactory(
    () => GetLeagueGamesUseCase(locator(), locator(), locator()),
  );
  locator.registerFactory(
    () => GetPlayoffSeriesUseCase(locator(), locator(), locator()),
  );
  locator.registerFactory(
    () => TeamGamesUseCase(locator(), locator(), locator()),
  );

  locator.registerFactory(() => MakeStandingsUseCase());
  locator.registerLazySingleton(() => StandingsRepository(locator()));

  locator.registerFactory(() => PlayoffsRepository(locator()));

  locator.registerFactory(() => BoxScoreRepository(locator(), locator()));

  await locator.allReady();
}
