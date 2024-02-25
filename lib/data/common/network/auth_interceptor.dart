import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String _apiKey;

  AuthInterceptor(this._apiKey);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = _apiKey;
    return super.onRequest(options, handler);
  }
}
