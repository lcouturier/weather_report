import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_report/domain/weather_item.dart';

part 'weather_list_state.freezed.dart';

@freezed
class WeatherListState with _$WeatherListState {
  const factory WeatherListState.initial() = _InitialState;
  const factory WeatherListState.loading() = _LoadingState;
  const factory WeatherListState.loaded(List<WeatherItem> items) = _SuccessState;
  const factory WeatherListState.error() = _ErrorState;
}
