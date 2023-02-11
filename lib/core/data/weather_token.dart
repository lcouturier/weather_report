import 'package:json_annotation/json_annotation.dart';

part 'weather_token.g.dart';

@JsonSerializable()
class WeatherToken {
  @JsonKey(name: 'parameter')
  final String accessToken;
  @JsonKey(name: 'tokenType')
  final String tokenType;

  const WeatherToken({
    required this.accessToken,
    required this.tokenType,
  });
  factory WeatherToken.fromJson(Map<String, dynamic> json) => _$WeatherTokenFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherTokenToJson(this);
}
