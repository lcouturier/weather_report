import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_list_state.freezed.dart';

@freezed
class WeatherListState with _$WeatherListState {
  const factory WeatherListState.initial() = _InitialState;
  const factory WeatherListState.loading() = _LoadingState;
  const factory WeatherListState.loaded() = _SuccessState;
  const factory WeatherListState.error() = _ErrorState;
}
