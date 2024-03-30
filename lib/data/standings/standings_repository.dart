import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/standings/remote/standings_remote_source.dart';
import 'package:flutternba/data/standings/standings_model.dart';

class StandingsRepository {
  final StandingsRemoteSource _remoteSource;

  StandingsRepository(this._remoteSource);

  Future<Result<List<TeamStandings>>> getStandings() => _remoteSource
      .getStandings()
      .mapResult((response) => response.mapList(TeamStandings.fromResponse));
}
