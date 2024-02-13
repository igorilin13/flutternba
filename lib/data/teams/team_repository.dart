import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/data/teams/local/teams_local_source.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_model.dart';

import '../../common/util/async_util.dart';
import '../../common/util/result.dart';

class TeamsRepository {
  final TeamsRemoteDataSource _remoteDataSource;
  final TeamsLocalDataSource _localDataSource;

  const TeamsRepository(this._remoteDataSource, this._localDataSource);

  Future<Result<List<Team>>> getTeams() async {
    final fromDb =
        (await _localDataSource.getTeams()).mapList((item) => item.toModel());
    if (fromDb.isNotEmpty) {
      return Result.success(fromDb);
    } else {
      return (await _remoteDataSource.getTeams())
          .map((teams) => teams.mapList(Team.fromResponse))
          .onSuccess((value) => _localDataSource.replace(value));
    }
  }

  Future<Result<Team>> getTeam(int teamId) {
    return getTeams().mapResult(
      (teams) => teams.firstWhere((element) => element.id == teamId),
    );
  }
}
