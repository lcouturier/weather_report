import 'package:weather_report/core/data/weather_token.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/core/extensions.dart';

mixin TokenAuth {
  static Future<String> Function(String) getAuthToken = _getAuthToken.memoize();
  static Future<String> _getAuthToken(String token) async {
    final result = await DioClient().get(
      "https://login.meteomatics.com/api/v1/token",
      headers: {'Authorization': ""},
    );

    return WeatherToken.fromJson(result.data).accessToken;
  }
}
