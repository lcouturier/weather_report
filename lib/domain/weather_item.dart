import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_report/domain/symbol.dart';

part 'weather_item.freezed.dart';

@freezed
class WeatherItem with _$WeatherItem {
  factory WeatherItem({
    required DateTime date,
    required double temp,
    required WeatherSymbol symbol,
    required String description,
  }) = _WeatherItem;
}

@freezed
class WeatherItemDescription with _$WeatherItemDescription {
  factory WeatherItemDescription({
    required DateTime date,
    required String description,
  }) = _WeatherItemDescription;
}
