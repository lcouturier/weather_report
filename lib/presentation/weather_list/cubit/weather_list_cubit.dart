import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darq/darq.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/core/extensions.dart';
import 'package:weather_report/data/weather_list/repository/weather_list_repository.dart';
import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';
import 'package:weather_report/domain/symbol.dart';
import 'package:weather_report/domain/weather_item.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_state.dart';

class WeatherListCubit extends Cubit<WeatherListState> {
  final WeatherListRepository _repository;
  WeatherListCubit(this._repository) : super(const WeatherListState.initial());

  Future<List<WeatherItemDescription>> _getDescriptions(CacheStrategy cacheStrategy) async {
    final descriptions = await _repository.getDescriptions(cacheStrategy);
    return const LineSplitter()
        .convert(descriptions)
        .skip(1)
        .map((e) => e.split(";"))
        .map((e) => WeatherItemDescription(date: DateTime.parse(e[0]), description: e[1]))
        .toList();
  }

  Future<WeatherListResponse> _getWeatherData(CacheStrategy cacheStrategy) async {
    return await _repository.getValues(cacheStrategy);
  }

  Future<void> fetch({CacheStrategy cacheStrategy = CacheStrategy.use}) async {
    emit(const WeatherListState.loading());
    try {
      final startDate = DateTime.now();
      final endDate = DateTime.now().add(5.days);

      final response = await _getWeatherData(cacheStrategy);
      final symbolItems = response.data.where((e) => e.parameter == 'weather_symbol_24h:idx').toList();
      final tempItems = response.data.where((e) => e.parameter == 't_2m:C').toList();

      final symbols = symbolItems.first.coordinates.first.dates
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour);

      final descriptions = (await _getDescriptions(cacheStrategy))
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour);

      final temperatures = tempItems.first.coordinates.first.dates
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour);

      final result = temperatures
          .zip(
              symbols,
              (Dates e, Dates other) => WeatherItem(
                  date: e.date, temperature: e.value, symbol: WeatherSymbol.fromOrdinal(other.value.toInt())))
          .zip(descriptions,
              (WeatherItem e, WeatherItemDescription other) => e.copyWith(description: other.description));

      emit(WeatherListState.loaded(result.toList()));
    } on Exception catch (_) {
      emit(const WeatherListState.error());
    }
  }
}
