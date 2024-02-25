import 'package:dio/dio.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/api_response.dart';
import 'package:flutternba/data/games/remote/game_response.dart';

import '../../teams/remote/team_response.dart';

class ApiService {
  final Dio _dio;

  const ApiService(this._dio);

  Future<Result<ApiResponse<List<TeamResponse>>>> getTeams() async {
    return performGet(
      "teams?per_page=100",
      (json) =>
          (json as List).map((item) => TeamResponse.fromJson(item)).toList(),
    );
  }

  Future<Result<ApiResponse<List<GameResponse>>>> getTeamGames(
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

  Future<Result<ApiResponse<List<GameResponse>>>> getLeagueGames(
    List<String> dates,
  ) async {
    return performGet(
      "games?per_page=100&dates[]=${dates.join(",")}",
      (json) =>
          (json as List).map((item) => GameResponse.fromJson(item)).toList(),
    );
  }

  Future<Result<ApiResponse<T>>> performGet<T>(
    String path,
    T Function(Object? json) fromJson,
  ) {
    return runCatchingAsync(() async {
      final response = await _dio.get(path);

      if (response.statusCode == 200) {
        return ApiResponse.fromJson(response.data, fromJson);
      } else {
        throw Exception('Failed to load data (code = ${response.statusCode})');
      }
    });
  }
}
