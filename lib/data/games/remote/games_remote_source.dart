import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/data/common/network/api_response.dart';
import 'package:flutternba/data/common/network/network_service.dart';
import 'package:flutternba/data/games/remote/game_response.dart';

import '../../../common/util/result.dart';

class GamesRemoteDataSource {
  final NetworkService _networkService;
  final int _currentSeason = _calculateCurrentApiSeason();

  GamesRemoteDataSource(this._networkService);

  Future<Result<List<GameResponse>>> getTeamGames(int teamId) async {
    final result = <GameResponse>[];
    int? currentPage = 1;

    while (currentPage != null) {
      final pageResult = await _networkService.getTeamGames(
        [teamId],
        [_currentSeason],
        currentPage,
      );

      switch (pageResult) {
        case Success<ApiResponse<List<GameResponse>>> success:
          result.addAll(success.value.data);
          currentPage = success.value.meta.nextPage;
        case Failure<ApiResponse<List<GameResponse>>> failure:
          return Result.failure(failure.error);
      }
    }

    return Result.success(result);
  }

  Future<Result<List<GameResponse>>> getLeagueGames(DateTime date) async {
    final formattedDate = "${date.year}-${date.month}-${date.day}";
    return _networkService
        .getLeagueGames([formattedDate]).mapResult((response) => response.data);
  }

  static int _calculateCurrentApiSeason() {
    final now = DateTime.now();
    return now.month >= DateTime.august ? now.year : now.year - 1;
  }
}
