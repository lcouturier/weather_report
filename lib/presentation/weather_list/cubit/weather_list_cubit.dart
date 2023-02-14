import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darq/darq.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/core/extensions.dart';
import 'package:weather_report/data/weather_list/repository/weather_list_repository.dart';
import 'package:weather_report/domain/data.dart';
import 'package:weather_report/domain/date.dart';
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
        .map((e) => Tuple2.fromList(e.split(";")))
        .map((e) => WeatherItemDescription(date: DateTime.parse(e.item0), description: e.item1))
        .toList();
  }

  Future<WeatherDatas> _getWeatherData(CacheStrategy cacheStrategy) async {
    final items = await _repository.getValues(cacheStrategy);
    return WeatherDatas(
      symbols: items.firstWhere((e) => e.parameter == 'weather_symbol_24h:idx').coordinates.first.dates,
      temperatures: items.firstWhere((e) => e.parameter == 't_2m:C').coordinates.first.dates,
    );
  }

  Future<void> fetch({CacheStrategy cacheStrategy = CacheStrategy.use}) async {
    emit(const WeatherListState.loading());
    try {
      final startDate = DateTime.now();
      final endDate = DateTime.now().add(5.days);

      final descriptions = (await _getDescriptions(cacheStrategy))
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour);

      final response = await _getWeatherData(cacheStrategy);

      final symbols = response.symbols
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour)
          .toList();

      final temperatures = response.temperatures
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour)
          .toList();

      final result = temperatures
          .zip(
              symbols,
              (WeatherDate e, WeatherDate other) => WeatherItem(
                  date: e.date, temperature: e.value, symbol: WeatherSymbol.fromOrdinal(other.value.toInt())))
          .zip(
              descriptions, (WeatherItem e, WeatherItemDescription other) => e.copyWith(description: other.description))
          .toList();

      emit(WeatherListState.loaded(result));
    } on Exception catch (_) {
      emit(const WeatherListState.error());
    }
  }
}
