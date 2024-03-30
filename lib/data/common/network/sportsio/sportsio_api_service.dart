import 'package:dio/dio.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/network/dio_ext.dart';
import 'package:flutternba/data/common/network/sportsio/sportsio_api_response.dart';
import 'package:flutternba/data/standings/remote/standings_response.dart';

class SportsIoApiService {
  final Dio _dio;

  SportsIoApiService(this._dio);

  Future<Result<SportsIoApiResponse<List<StandingsResponse>>>> getStandings(
    int season,
  ) {
    return performGet(
      "standings?league=standard&season=$season",
      (json) => (json as List)
          .map((item) => StandingsResponse.fromJson(item))
          .toList(),
    );
  }

  Future<Result<SportsIoApiResponse<T>>> performGet<T>(
    String path,
    T Function(Object? json) fromJson,
  ) {
    return _dio.performGet(
      path,
      (json) =>
          SportsIoApiResponse.fromJson(json as Map<String, dynamic>, fromJson),
    );
  }
}
