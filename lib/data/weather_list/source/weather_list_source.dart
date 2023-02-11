import 'package:weather_report/core/mixin_token.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';

class WeatherListSource with TokenAuth {
  Future<WeatherListResponse> getValues() async {
    final token = await TokenAuth.getAuthToken("Auth");
    final response = await DioClient().get(
        'https://api.meteomatics.com/2023-02-11T00:00:00Z--2023-02-14T00:00:00Z:PT1H/weather_symbol_24h:idx,t_2m:C/48.8249279,2.3980539/json?access_token=$token');

    return WeatherListResponse.fromJson(response.data);
  }
}
