import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:darq/darq.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/core/extensions.dart';
import 'package:weather_report/data/weather_list/repository/weather_list_repository.dart';
import 'package:weather_report/domain/symbol.dart';
import 'package:weather_report/domain/weather_item.dart';
import 'package:weather_report/presentation/weather_list/cubit/weather_list_state.dart';

class WeatherListCubit extends Cubit<WeatherListState> {
  final WeatherListRepository _repository;
  WeatherListCubit(this._repository) : super(const WeatherListState.initial());

  Future<void> fetch({CacheStrategy cacheStrategy = CacheStrategy.use}) async {
    emit(const WeatherListState.loading());
    try {
      final startDate = DateTime.now();
      final endDate = DateTime.now().add(5.days);

      final descriptions = await _repository.getDescriptions(cacheStrategy);
      final weatherDescriptions = const LineSplitter()
          .convert(descriptions)
          .skip(1)
          .map((e) => e.split(";"))
          .map((e) => WeatherItemDescription(date: DateTime.parse(e[0]), description: e[1]));

      final response = await _repository.getValues(cacheStrategy);
      final symbolItems = response.data.where((e) => e.parameter == 'weather_symbol_24h:idx').toList();
      final tempItems = response.data.where((e) => e.parameter == 't_2m:C').toList();

      final currentSymbol = symbolItems.first.coordinates.first.dates
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour);

      final currentDescription = weatherDescriptions
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour);
      final currentTemp = tempItems.first.coordinates.first.dates
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == startDate.hour);

      final result = currentTemp
          .select(
            (e, i) => WeatherItem(
              date: e.date,
              temp: e.value,
              symbol: WeatherSymbol.fromOrdinal(currentSymbol.elementAt(i).value.toInt()),
              description: currentDescription.elementAt(i).description,
            ),
          )
          .toList();

      emit(WeatherListState.loaded(result));
    } on Exception catch (_) {
      emit(const WeatherListState.error());
    }
  }
}
