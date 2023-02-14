import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_report/domain/coordinates.dart';
import 'package:weather_report/domain/date.dart';

part 'data.freezed.dart';

@freezed
class WeatherData with _$WeatherData {
  factory WeatherData({
    required String parameter,
    required List<WeatherCoordinates> coordinates,
  }) = _WeatherData;
}

@freezed
class WeatherDatas with _$WeatherDatas {
  factory WeatherDatas({
    required List<WeatherDate> symbols,
    required List<WeatherDate> temperatures,
  }) = _WeatherDatas;
}
