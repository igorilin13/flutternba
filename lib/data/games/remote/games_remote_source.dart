import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/api_season.dart';
import 'package:flutternba/data/common/network/ball/ball_api_response.dart';
import 'package:flutternba/data/common/network/ball/ball_api_service.dart';
import 'package:flutternba/data/games/remote/game_response.dart';

class GamesRemoteDataSource {
  final BallApiService _networkService;
  final int _currentSeason = calculateCurrentApiSeason();

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
        case Success<BallApiResponse<List<GameResponse>>> success:
          result.addAll(success.value.data);
          currentCursor = success.value.meta?.nextCursor;
          loadedAllPages = currentCursor == null;
        case Failure<BallApiResponse<List<GameResponse>>> failure:
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
}
