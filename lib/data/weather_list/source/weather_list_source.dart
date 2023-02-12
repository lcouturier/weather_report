import 'package:weather_report/core/mixin_token.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';

class WeatherListSource with TokenAuth {
  Future<WeatherListResponse> getValues() async {
    final token = await TokenAuth.getAuthToken("Auth");
    final response = await DioClient().get(
        'https://api.meteomatics.com/2023-02-12T00:00:00Z--2023-02-17T00:00:00Z:PT1H/weather_symbol_24h:idx,t_2m:C/48.8249279,2.3980539/json?access_token=$token');

    return WeatherListResponse.fromJson(response.data);
  }

  Future<String> getDescriptions() async {
    final token = await TokenAuth.getAuthToken("Auth");
    final response = await DioClient().get(
        'https://api.meteomatics.com/2023-02-12T00:00:00Z--2023-02-17T00:00:00Z:PT1H/weather_text_fr:str/48.8249279,2.3980539/csv?access_token=$token');

    return response.data;
  }
}
