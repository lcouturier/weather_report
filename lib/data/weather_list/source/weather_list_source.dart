import 'package:injectable/injectable.dart';
import 'package:weather_report/core/data/token_interceptor.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/core/injection/injection.dart';
import 'package:weather_report/core/mixin_token.dart';
import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';
import 'package:weather_report/data/weather_list/source/position.dart';

@injectable
class WeatherListSource with TokenAuth {
  final String baseUrl = 'https://api.meteomatics.com';

  final criteria =
      "${DateTime(2023, 2, 13, 0, 0, 0, 0, 0).toIso8601String()}Z--${DateTime(2023, 2, 17, 0, 0, 0, 0, 0).toIso8601String()}Z";

  Future<WeatherListResponse> getValues() async {
    final response = await DioClient().get(
      '$baseUrl/2023-02-12T00:00:00Z--2023-02-19T00:00:00Z:PT1H/weather_symbol_24h:idx,t_2m:C/${Position.paris.toString()}/json',
      interceptor: getIt<TokenInterceptor>(),
    );

    return WeatherListResponse.fromJson(response.data);
  }

  Future<String> getDescriptions() async {
    final response = await DioClient().get(
      '$baseUrl/2023-02-12T00:00:00Z--2023-02-19T00:00:00Z:PT1H/weather_text_fr:str/${Position.paris.toString()}/csv',
      interceptor: getIt<TokenInterceptor>(),
    );

    return response.data;
  }
}
