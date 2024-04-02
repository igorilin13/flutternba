import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/standings/remote/standings_remote_source.dart';
import 'package:flutternba/data/standings/standings_model.dart';

class StandingsRepository {
  final StandingsRemoteSource _remoteSource;
  List<TeamStandings>? _cached;

  StandingsRepository(this._remoteSource);

  Future<Result<List<TeamStandings>>> getStandings() async {
    if (_cached != null) {
      return Future.value(Result.success(_cached!));
    } else {
      return (await _remoteSource.getStandings())
          .map((response) => response.mapList(TeamStandings.fromResponse))
          .onSuccess((value) => _cached = value);
    }
  }
}
