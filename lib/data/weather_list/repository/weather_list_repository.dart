import 'package:injectable/injectable.dart';
import 'package:weather_report/core/data/cache_options.dart';
import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';
import 'package:weather_report/data/weather_list/source/weather_list_source.dart';

@injectable
class WeatherListRepository {
  final WeatherListSource _source;

  const WeatherListRepository(this._source);

  Future<WeatherListResponse> getValues(CacheStrategy cacheStrategy) async {
    return _source.getValues(cacheStrategy);
  }

  Future<String> getDescriptions(CacheStrategy cacheStrategy) async {
    return _source.getDescriptions(cacheStrategy);
  }
}
