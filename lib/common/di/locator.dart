import 'package:get_it/get_it.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/data/common/network/network_service.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_repository.dart';
import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void initLocator() {
  locator.registerLazySingleton(() => http.Client());
  locator.registerLazySingleton(
      () => NetworkService(AppConfig.baseApiUrl, locator()));

  locator.registerFactory(() => TeamsRemoteDataSource(locator()));
  locator.registerFactory(() => TeamsRepository(locator()));
}
