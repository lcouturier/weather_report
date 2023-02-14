import 'package:injectable/injectable.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/data/weather_list/source/weather_list_source.dart';
import 'package:weather_report/domain/data.dart';

@injectable
class WeatherListRepository {
  final WeatherListSource _source;

  const WeatherListRepository(this._source);

  Future<List<WeatherData>> getValues(DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    return (await _source.getValues(startDate, endDate, cacheStrategy)).data.map((e) => e.toDomain()).toList();
  }

  Future<String> getDescriptions(DateTime startDate, DateTime endDate, CacheStrategy cacheStrategy) async {
    return _source.getDescriptions(startDate, endDate, cacheStrategy);
  }
}
