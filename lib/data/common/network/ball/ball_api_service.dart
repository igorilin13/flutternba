import 'package:dio/dio.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/ball/ball_api_response.dart';
import 'package:flutternba/data/common/network/dio_ext.dart';
import 'package:flutternba/data/games/remote/game_response.dart';
import 'package:flutternba/data/teams/remote/team_response.dart';

class BallApiService {
  final Dio _dio;

  const BallApiService(this._dio);

  Future<Result<BallApiResponse<List<TeamResponse>>>> getTeams() async {
    return performGet(
      "teams?per_page=100",
      (json) =>
          (json as List).map((item) => TeamResponse.fromJson(item)).toList(),
    );
  }

  Future<Result<BallApiResponse<List<GameResponse>>>> getTeamGames(
    List<int> teamIds,
    List<int> seasons,
    int? cursor,
  ) async {
    return performGet(
      "games?per_page=100&team_ids[]=${teamIds.join(",")}"
      "&seasons[]=${seasons.join(",")}"
      "${cursor != null ? "&cursor=$cursor" : ""}",
      (json) =>
          (json as List).map((item) => GameResponse.fromJson(item)).toList(),
    );
  }

  Future<Result<BallApiResponse<List<GameResponse>>>> getLeagueGames(
    List<String> dates,
  ) async {
    return performGet(
      "games?per_page=100&dates[]=${dates.join(",")}",
      (json) =>
          (json as List).map((item) => GameResponse.fromJson(item)).toList(),
    );
  }

  Future<Result<BallApiResponse<T>>> performGet<T>(
    String path,
    T Function(Object? json) fromJson,
  ) {
    return _dio.performGet(
      path,
      (json) =>
          BallApiResponse.fromJson(json as Map<String, dynamic>, fromJson),
    );
  }
}
