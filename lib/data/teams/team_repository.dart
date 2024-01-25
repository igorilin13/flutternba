import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_model.dart';

import '../../common/util/result.dart';
import '../../common/util/async_util.dart';

class TeamsRepository {
  final TeamsRemoteDataSource _remoteDataSource;

  const TeamsRepository(this._remoteDataSource);

  Future<Result<List<Team>>> getTeams() {
    return _remoteDataSource.getTeams().mapResult(
          (teams) => teams.mapList(Team.fromResponse),
        );
  }

  Future<Result<Team>> getTeam(int teamId) {
    return getTeams().mapResult(
      (teams) => teams.firstWhere((element) => element.id == teamId),
    );
  }
}
