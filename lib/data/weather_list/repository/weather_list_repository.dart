import 'package:weather_report/data/weather_list/source/dtos/weather_list_response.dart';
import 'package:weather_report/data/weather_list/source/weather_list_source.dart';

class WeatherListRepository {
  final WeatherListSource _source;

  const WeatherListRepository(this._source);

  Future<WeatherListResponse> getValues() async {
    return _source.getValues();
  }

  Future<String> getDescriptions() async {
    return _source.getDescriptions();
  }
}
