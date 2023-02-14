import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/core/data/token_interceptor.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/core/injection/injection.dart';
import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';
import 'package:weather_report/data/weather_list/source/position.dart';

@injectable
class WeatherListSource {
  final String baseUrl = 'https://api.meteomatics.com';

  Future<WeatherListResponse> getValues(DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    final filter = "${startDate.toIso8601String()}Z--${endDate.toIso8601String()}Z";
    final response = await DioClient().get(
      '$baseUrl/$filter:PT1H/weather_symbol_24h:idx,t_2m:C/${Position.paris.toString()}/json',
      interceptors: [
        getIt<TokenInterceptor>(),
        DioCacheInterceptor(options: CacheOptionsManager.defaultOptions.withCustom(cache: cacheStrategy)),
      ],
    );

    return WeatherListResponse.fromJson(response.data);
  }

  Future<String> getDescriptions(DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    final filter = "${startDate.toIso8601String()}Z--${endDate.toIso8601String()}Z";
    final response = await DioClient().get(
      '$baseUrl/$filter:PT1H/weather_text_fr:str/${Position.paris.toString()}/csv',
      interceptors: [
        getIt<TokenInterceptor>(),
        DioCacheInterceptor(options: CacheOptionsManager.defaultOptions.withCustom(cache: cacheStrategy)),
      ],
    );

    return response.data;
  }
}
