// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherListResponse _$WeatherListResponseFromJson(Map<String, dynamic> json) =>
    WeatherListResponse(
      version: json['version'] as String,
      user: json['user'] as String,
      dateGenerated: json['dateGenerated'] as String,
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherListResponseToJson(
        WeatherListResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'user': instance.user,
      'dateGenerated': instance.dateGenerated,
      'status': instance.status,
      'data': instance.data,
    };

Dates _$DatesFromJson(Map<String, dynamic> json) => Dates(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$DatesToJson(Dates instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      dates: (json['dates'] as List<dynamic>)
          .map((e) => Dates.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'dates': instance.dates,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      parameter: json['parameter'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => Coordinates.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'parameter': instance.parameter,
      'coordinates': instance.coordinates,
    };
