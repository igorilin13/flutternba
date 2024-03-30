import 'package:dio/dio.dart';

class BallAuthInterceptor extends Interceptor {
  final String _apiKey;

  BallAuthInterceptor(this._apiKey);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = _apiKey;
    return super.onRequest(options, handler);
  }
}
