import 'package:json_annotation/json_annotation.dart';

part 'weather_token.g.dart';

@JsonSerializable()
class WeatherToken {
  @JsonKey(name: 'access_token')
  final String accessToken;
  @JsonKey(name: 'token_type')
  final String tokenType;

  const WeatherToken({
    required this.accessToken,
    required this.tokenType,
  });
  factory WeatherToken.fromJson(Map<String, dynamic> json) => _$WeatherTokenFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherTokenToJson(this);
}
