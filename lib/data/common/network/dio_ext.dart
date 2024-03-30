import 'package:dio/dio.dart';
import 'package:flutternba/common/util/result.dart';

extension DioExt on Dio {
  Future<Result<T>> performGet<T>(
    String path,
    T Function(Object? json) fromJson,
  ) {
    return runCatchingAsync(() async {
      final response = await get(path);

      if (response.statusCode == 200) {
        return fromJson(response.data);
      } else {
        throw Exception('Failed to load data (code = ${response.statusCode})');
      }
    });
  }
}
