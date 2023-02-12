import 'package:injectable/injectable.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/core/mixin_token.dart';
import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';

class Position {
  final double lat;
  final double lng;

  Position(this.lat, this.lng);

  @override
  String toString() => '$lat,$lng';

  static Position paris = Position(48.8249279, 2.3980539);
}

@injectable
class WeatherListSource with TokenAuth {
  final String baseUrl = 'https://api.meteomatics.com';

  final criteria =
      "${DateTime(2023, 2, 13, 0, 0, 0, 0, 0).toIso8601String()}Z--${DateTime(2023, 2, 17, 0, 0, 0, 0, 0).toIso8601String()}Z";

  Future<WeatherListResponse> getValues() async {
    final token = await TokenAuth.getAuthToken("Auth");
    final response = await DioClient().get(
        '$baseUrl/2023-02-12T00:00:00Z--2023-02-17T00:00:00Z:PT1H/weather_symbol_24h:idx,t_2m:C/${Position.paris.toString()}/json?access_token=$token');

    return WeatherListResponse.fromJson(response.data);
  }

  Future<String> getDescriptions() async {
    final token = await TokenAuth.getAuthToken("Auth");
    final response = await DioClient().get(
        '$baseUrl/2023-02-12T00:00:00Z--2023-02-17T00:00:00Z:PT1H/weather_text_fr:str/${Position.paris.toString()}/csv?access_token=$token');

    return response.data;
  }
}
