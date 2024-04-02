import 'package:flutter/foundation.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/data/teams/local/teams_local_source.dart';
import 'package:flutternba/data/teams/local/teams_table.dart';
import 'package:flutternba/data/teams/remote/teams_remote_source.dart';
import 'package:flutternba/data/teams/team_model.dart';

import '../../common/util/result.dart';

class TeamsRepository {
  final TeamsRemoteDataSource _remoteDataSource;
  final TeamsLocalDataSource _localDataSource;

  bool hasRefreshed = false;

  TeamsRepository(this._remoteDataSource, this._localDataSource);

  Stream<Result<List<Team>>> getTeams() async* {
    final fromDb =
        (await _localDataSource.getTeams()).mapList((item) => item.toModel());

    if (fromDb.isNotEmpty) {
      yield Result.success(fromDb);
    }

    if (!hasRefreshed) {
      final fromRemote = (await _remoteDataSource.getTeams())
          .map((teams) => teams.mapList(Team.fromResponse))
          .onSuccess((value) {
        _localDataSource.replace(value);
        hasRefreshed = true;
      });

      final fromRemoteValue = fromRemote.getOrNull();
      if (fromDb.isEmpty ||
          fromRemoteValue != null && !listEquals(fromDb, fromRemoteValue)) {
        yield fromRemote;
      }
    }
  }

  Stream<Result<Team>> getTeam(int teamId) {
    return getTeams()
        .map(
          (result) => result.map(
            (value) => value.firstWhere((element) => element.id == teamId),
          ),
        )
        .distinct();
  }
}
