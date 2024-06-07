import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_model.dart';

import '../../common/util/result.dart';

class TeamsRepository {
  final TeamsRemoteDataSource _remoteDataSource;

  bool hasRefreshed = false;

  TeamsRepository(this._remoteDataSource);

  Future<Result<List<Team>>> getTeams() async {
    return (await _remoteDataSource.getTeams())
        .map((teams) => teams.mapList(Team.fromResponse));
  }

  Future<Result<Team>> getTeam(int teamId) async {
    return (await getTeams())
        .map((teams) => teams.firstWhere((element) => element.id == teamId));
  }
}
