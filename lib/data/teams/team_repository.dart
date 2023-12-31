import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_model.dart';

import '../../common/util/result.dart';
import '../../common/util/async_util.dart';

// todo: caching
class TeamsRepository {
  final TeamsRemoteDataSource _remoteDataSource;

  const TeamsRepository(this._remoteDataSource);

  Future<Result<List<Team>>> getTeams() =>
      _remoteDataSource.getTeams().mapResult((teams) =>
          teams.map((team) => Team.fromResponse(team)).toList(growable: false));
}
