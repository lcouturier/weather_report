import 'package:dio/dio.dart';

class DioClient {
  Dio _createDio({Map<String, dynamic>? headers, Interceptor? interceptor}) {
    var dio = Dio();
    dio.options.connectTimeout = 20000; //20s
    dio.options.receiveTimeout = 20000; //20s
    if (headers != null) {
      dio.options.headers.addAll(headers);
    }
    if (interceptor != null) {
      dio.interceptors.add(interceptor);
    }
    return dio;
  }

  Future<Response> get(String url, {Map<String, dynamic>? headers, Interceptor? interceptor}) async {
    var dio = _createDio(headers: headers, interceptor: interceptor);

    var response = await dio.get(url);
    return response;
  }
}
