import 'package:weather_report/core/data/weather_token.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/core/extensions.dart';

mixin TokenAuth {
  static Future<String> Function(String) getAuthToken = _getAuthToken.memoize();
  static Future<String> _getAuthToken(String token) async {
    final authValue = 'Basic ${'perso_couturier:0rF8SutAc1'.encodeBase64()}';

    final result = await DioClient().get(
      "https://login.meteomatics.com/api/v1/token",
      headers: {'Authorization': authValue},
    );

    return WeatherToken.fromJson(result.data).accessToken;
  }
}
