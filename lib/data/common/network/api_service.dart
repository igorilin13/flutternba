import 'dart:convert';

import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/api_response.dart';
import 'package:flutternba/data/games/remote/game_response.dart';
import 'package:http/http.dart' as http;

import '../../teams/remote/team_response.dart';

class ApiService {
  final String _baseUrl;
  final String _apiKey;
  final http.Client _client;

  const ApiService(this._baseUrl, this._apiKey, this._client);

  Uri _buildUrl(String path) => Uri.parse("$_baseUrl$path");

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
      final response = await _client.get(
        _buildUrl(path),
        headers: {"Authorization": _apiKey},
      );

      if (response.statusCode == 200) {
        return ApiResponse.fromJson(jsonDecode(response.body), fromJson);
      } else {
        throw Exception('Failed to load data (code = ${response.statusCode})');
      }
    });
  }
}