import 'dart:convert';

import 'package:flutternba/data/common/network/api_response.dart';
import 'package:http/http.dart' as http;

import '../../teams/remote/team_response.dart';

class NetworkService {
  final String _baseUrl;
  final http.Client _client;

  const NetworkService(this._baseUrl, this._client);

  Uri _buildUrl(String path) => Uri.parse("$_baseUrl$path");

  Future<ApiResponse<List<TeamResponse>>> getTeams() async {
    final response = await _client.get(_buildUrl("teams?per_page=100"));

    if (response.statusCode == 200) {
      return ApiResponse.fromJson(
        jsonDecode(response.body),
        (json) =>
            (json as List).map((item) => TeamResponse.fromJson(item)).toList(),
      );
    } else {
      throw Exception('Failed to load data (code = ${response.statusCode})');
    }
  }
}
