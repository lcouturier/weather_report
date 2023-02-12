// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherToken _$WeatherTokenFromJson(Map<String, dynamic> json) => WeatherToken(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$WeatherTokenToJson(WeatherToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };
