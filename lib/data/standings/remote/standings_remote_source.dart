import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/api_season.dart';
import 'package:flutternba/data/common/network/sportsio/sportsio_api_service.dart';
import 'package:flutternba/data/common/network/team_mapping.dart';
import 'package:flutternba/data/standings/remote/standings_response.dart';

class StandingsRemoteSource {
  final TeamIdMapping _teamIdMapping;
  final SportsIoApiService _apiService;
  final int _currentSeason = calculateCurrentApiSeason();

  StandingsRemoteSource(this._apiService, this._teamIdMapping);

  Future<Result<List<StandingsResponse>>> getStandings() async {
    return _apiService.getStandings(_currentSeason).mapResult((result) {
      return result.response.mapList((response) {
        return response.copyWith(
          team: response.team.copyWith(
            id: _teamIdMapping.getBallApiTeamId(response.team.id),
          ),
        );
      });
    });
  }
}
