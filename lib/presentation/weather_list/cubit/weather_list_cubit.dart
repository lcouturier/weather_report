import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_state.dart';

class WeatherListCubit extends Cubit<WeatherListState> {
  WeatherListCubit() : super(const WeatherListState.initial());
}
