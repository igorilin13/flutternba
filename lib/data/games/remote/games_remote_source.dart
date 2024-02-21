import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/data/common/network/api_response.dart';
import 'package:flutternba/data/common/network/api_service.dart';
import 'package:flutternba/data/games/remote/game_response.dart';

import '../../../common/util/result.dart';

class GamesRemoteDataSource {
  final ApiService _networkService;
  final int _currentSeason = _calculateCurrentApiSeason();

  GamesRemoteDataSource(this._networkService);

  Future<Result<List<GameResponse>>> getTeamGames(int teamId) async {
    final result = <GameResponse>[];
    int? currentCursor;
    bool loadedAllPages = false;

    while (!loadedAllPages) {
      final pageResult = await _networkService.getTeamGames(
        [teamId],
        [_currentSeason],
        currentCursor,
      );

      switch (pageResult) {
        case Success<ApiResponse<List<GameResponse>>> success:
          result.addAll(success.value.data);
          currentCursor = success.value.meta?.nextCursor;
          loadedAllPages = currentCursor == null;
        case Failure<ApiResponse<List<GameResponse>>> failure:
          return Result.failure(failure.error);
      }
    }
    result.sortBy((item) => item.date);

    return Result.success(result);
  }

  Future<Result<List<GameResponse>>> getLeagueGames(DateTime date) async {
    final formattedDate = "${date.year}-"
        "${date.month.toString().padLeft(2, "0")}-"
        "${date.day.toString().padLeft(2, "0")}";
    return _networkService
        .getLeagueGames([formattedDate]).mapResult((response) => response.data);
  }

  static int _calculateCurrentApiSeason() {
    final now = DateTime.now();
    return now.month >= DateTime.august ? now.year : now.year - 1;
  }
}
