// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherToken _$WeatherTokenFromJson(Map<String, dynamic> json) => WeatherToken(
      accessToken: json['parameter'] as String,
      tokenType: json['tokenType'] as String,
    );

Map<String, dynamic> _$WeatherTokenToJson(WeatherToken instance) =>
    <String, dynamic>{
      'parameter': instance.accessToken,
      'tokenType': instance.tokenType,
    };
