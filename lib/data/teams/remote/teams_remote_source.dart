import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/api_service.dart';
import 'package:flutternba/data/teams/remote/team_response.dart';

class TeamsRemoteDataSource {
  static final Set<int> _activeTeamIds =
      List.generate(30, (index) => index + 1).toSet();

  final ApiService _apiService;

  const TeamsRemoteDataSource(this._apiService);

  Future<Result<List<TeamResponse>>> getTeams() async {
    return _apiService.getTeams().mapResult(
          (response) => response.data
              .filterList((element) => _activeTeamIds.contains(element.id)),
        );
  }
}
