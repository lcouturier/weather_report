import 'package:dio/dio.dart';

class DioClient {
  Dio _createDio({Map<String, dynamic>? headers, List<Interceptor>? interceptors}) {
    var dio = Dio();
    dio.options.connectTimeout = 20000; //20s
    dio.options.receiveTimeout = 20000; //20s
    if (headers != null) {
      dio.options.headers.addAll(headers);
    }
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }
    return dio;
  }

  Future<Response> get(String url, {Map<String, dynamic>? headers, List<Interceptor>? interceptors}) async {
    var dio = _createDio(headers: headers, interceptors: interceptors);

    var response = await dio.get(url);
    return response;
  }
}
