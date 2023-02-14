import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_report/domain/date.dart';

part 'coordinates.freezed.dart';

@freezed
class WeatherCoordinates with _$WeatherCoordinates {
  factory WeatherCoordinates({
    required double lat,
    required double lon,
    required List<WeatherDate> dates,
  }) = _WeatherCoordinates;
}
