import 'package:dio/dio.dart';

class SportsIoAuthInterceptor extends Interceptor {
  final String _apiKey;

  SportsIoAuthInterceptor(this._apiKey);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['x-rapidapi-host'] = "v2.nba.api-sports.io";
    options.headers['x-rapidapi-key'] = _apiKey;
    return super.onRequest(options, handler);
  }
}
