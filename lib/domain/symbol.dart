// ignore_for_file: constant_identifier_names

import 'package:weather_report/core/extensions.dart';
import 'package:weather_report/core/themes/images_path.dart';

enum WeatherSymbol {
  unknown(0, ImagePaths.unknown),
  sunny(1, ImagePaths.sunny),
  lightClouds(2, ImagePaths.sunny_intervals),
  partlyCloudy(3, ImagePaths.white_cloud),
  cloudy(4, ImagePaths.mostly_cloudy),
  rain(5, ImagePaths.cloudy_with_heavy_rain),
  sleet(6, ImagePaths.sleet_showers),
  snow(7, ImagePaths.cloudy_with_heavy_snow),
  rainShower(8, ImagePaths.light_rain_showers),
  snowShower(9, ImagePaths.light_snow_showers),
  sleetShower(10, ImagePaths.sleet_showers),
  lightFog(11, ImagePaths.fog),
  denseFog(12, ImagePaths.fog),
  freezingRain(13, ImagePaths.freezing_rain),
  thunderstorms(14, ImagePaths.thunderstorms),
  drizzle(15, ImagePaths.drizzle),
  Sandstorm(16, ImagePaths.dust_sand);

  const WeatherSymbol(this.value, this.image);
  final int value;
  final String image;

  static WeatherSymbol Function(int) fromOrdinal = _fromOrdinalCore.memoize();
  static WeatherSymbol _fromOrdinalCore(int value) {
    return WeatherSymbol.values.firstWhere((e) => e.value == value, orElse: () => WeatherSymbol.unknown);
  }
}
