import 'package:json_annotation/json_annotation.dart';
import 'package:weather_report/domain/coordinates.dart';
import 'package:weather_report/domain/data.dart';
import 'package:weather_report/domain/date.dart';

part 'weather_list_response.g.dart';

@JsonSerializable()
class WeatherListResponse {
  @JsonKey(name: 'version')
  final String version;
  @JsonKey(name: 'user')
  final String user;
  @JsonKey(name: 'dateGenerated')
  final String dateGenerated;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'data')
  final List<Data> data;
  const WeatherListResponse({
    required this.version,
    required this.user,
    required this.dateGenerated,
    required this.status,
    required this.data,
  });

  factory WeatherListResponse.fromJson(Map<String, dynamic> json) => _$WeatherListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherListResponseToJson(this);
}

@JsonSerializable()
class Dates {
  @JsonKey(name: 'date')
  final DateTime date;
  @JsonKey(name: 'value')
  final double value;
  const Dates({
    required this.date,
    required this.value,
  });
  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
  Map<String, dynamic> toJson() => _$DatesToJson(this);

  WeatherDate toDomain() {
    return WeatherDate(date: date, value: value);
  }
}

@JsonSerializable()
class Coordinates {
  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'lon')
  final double lon;
  @JsonKey(name: 'dates')
  final List<Dates> dates;
  const Coordinates({
    required this.lat,
    required this.lon,
    required this.dates,
  });
  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);

  WeatherCoordinates toDomain() {
    return WeatherCoordinates(lat: lat, lon: lon, dates: dates.map((e) => e.toDomain()).toList());
  }
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'parameter')
  final String parameter;
  @JsonKey(name: 'coordinates')
  final List<Coordinates> coordinates;
  const Data({
    required this.parameter,
    required this.coordinates,
  });
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);

  WeatherData toDomain() {
    return WeatherData(
      parameter: parameter,
      coordinates: coordinates.map((e) => e.toDomain()).toList(),
    );
  }
}
