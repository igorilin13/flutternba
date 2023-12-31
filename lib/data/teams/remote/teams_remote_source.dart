import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/network_service.dart';
import 'package:flutternba/data/teams/remote/team_response.dart';

class TeamsRemoteDataSource {
  static final Set<int> _activeTeamIds =
      List.generate(30, (index) => index + 1).toSet();

  final NetworkService _networkService;

  const TeamsRemoteDataSource(this._networkService);

  Future<Result<List<TeamResponse>>> getTeams() async {
    return runCatching(() async {
      final fromService = await _networkService.getTeams();
      return fromService.data
          .where((element) => _activeTeamIds.contains(element.id))
          .toList(growable: false);
    });
  }
}
