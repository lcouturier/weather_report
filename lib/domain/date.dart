import 'package:freezed_annotation/freezed_annotation.dart';

part 'date.freezed.dart';

@freezed
class WeatherDate with _$WeatherDate {
  factory WeatherDate({
    required DateTime date,
    required double value,
  }) = _WeatherDate;
}
