import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_report/domain/symbol.dart';

part 'date.freezed.dart';

@freezed
class WeatherDate with _$WeatherDate {
  factory WeatherDate.temperature({required DateTime date, required double temperature}) = _Temperature;
  factory WeatherDate.symbol({required DateTime date, required WeatherSymbol symbol}) = _Symbol;
}
