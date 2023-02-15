import 'package:flutter_test/flutter_test.dart';
import 'package:weather_report/domain/symbol.dart';

void main() {
  group('Weather Symbol', () {
    test('fromOrdinal 0', () async {
      final result = WeatherSymbol.fromOrdinal(0);
      expect(result, WeatherSymbol.unknown);
    });

    test('fromOrdinal 999', () async {
      final result = WeatherSymbol.fromOrdinal(999);
      expect(result, WeatherSymbol.unknown);
    });

    test('fromOrdinal 1', () async {
      final result = WeatherSymbol.fromOrdinal(1);
      expect(result, WeatherSymbol.sunny);
    });
  });
}
