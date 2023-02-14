import 'dart:convert';

import 'package:darq/darq.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/data/weather_list/source/weather_list_source.dart';
import 'package:weather_report/domain/data.dart';
import 'package:weather_report/domain/data_type.dart';
import 'package:weather_report/domain/weather_item.dart';

@injectable
class WeatherListRepository {
  final WeatherListSource _source;

  const WeatherListRepository(this._source);

  Future<WeatherDatas> getValues(DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    final items = (await _source.getValues(startDate, endDate, cacheStrategy));
    final symbols = items.data.firstWhere((e) => e.parameter == 'weather_symbol_24h:idx');
    final temperatures = items.data.firstWhere((e) => e.parameter == 't_2m:C');
    return WeatherDatas(
      symbols: symbols.coordinates.first.dates.map((e) => e.toDomain(dataType: DataType.symbol)).toList(),
      temperatures:
          temperatures.coordinates.first.dates.map((e) => e.toDomain(dataType: DataType.temperature)).toList(),
    );
  }

  Future<List<WeatherItemDescription>> getDescriptions(
      DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    final descriptions = await _source.getDescriptions(startDate, endDate, cacheStrategy);
    return const LineSplitter()
        .convert(descriptions)
        .skip(1)
        .map((e) => Tuple2.fromList(e.split(";")))
        .map((e) => WeatherItemDescription(date: DateTime.parse(e.item0), description: e.item1))
        .toList();
  }
}
