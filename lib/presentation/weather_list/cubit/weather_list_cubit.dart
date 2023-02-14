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

  Future<List<WeatherItemDescription>> _getDescriptions(
      DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    final descriptions = await _repository.getDescriptions(startDate, endDate, cacheStrategy);
    return descriptions;
  }

  Future<WeatherDatas> _getWeatherData(DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    final items = await _repository.getValues(startDate, endDate, cacheStrategy);
    return items;
  }

  WeatherItem _transform(WeatherDate l, WeatherDate r) {
    return WeatherItem(
      date: l.date,
      temperature: l.maybeWhen(temperature: (date, value) => value, orElse: () => 0.0),
      symbol: r.maybeWhen(symbol: (date, value) => value, orElse: () => WeatherSymbol.none),
    );
  }

  Future<void> fetch({CacheStrategy cacheStrategy = CacheStrategy.use}) async {
    emit(const WeatherListState.loading());
    try {
      final currentDate = DateTime.now();
      final startDate = DateTime(currentDate.year, currentDate.month, currentDate.day, 0, 0, 0);
      final endDate = DateTime.now().add(5.days);

      final descriptions = (await _getDescriptions(startDate, endDate, cacheStrategy))
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == currentDate.hour);

      final weatherDatas = await _getWeatherData(startDate, endDate, cacheStrategy);

      final symbols = weatherDatas.symbols
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == currentDate.hour)
          .toList();

      final temperatures = weatherDatas.temperatures
          .where((e) => ((e.date >= startDate) && (e.date <= endDate)))
          .where((e) => e.date.hour == currentDate.hour)
          .toList();

      final result = temperatures
          .zip(symbols, _transform)
          .zip(
            descriptions,
            (WeatherItem l, WeatherItemDescription r) => l.copyWith(description: r.description),
          )
          .toList();

      emit(WeatherListState.loaded(result));
    } on Exception catch (_) {
      emit(const WeatherListState.error());
    }
  }
}
