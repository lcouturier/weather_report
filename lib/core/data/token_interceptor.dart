import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_report/core/mixin_token.dart';

@Singleton()
class TokenInterceptor extends InterceptorsWrapper with TokenAuth {
  TokenInterceptor();

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await TokenAuth.getAuthToken("Auth");
    options.queryParameters.addAll({"access_token": token});
    return super.onRequest(options, handler);
  }
}
