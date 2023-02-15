import 'package:flutter_test/flutter_test.dart';
import 'package:weather_report/domain/data_type.dart';

void main() {
  group('DataType', () {
    test('temperature', () async {
      var value = DataType.temperature;
      final result = value.when(temperature: () => "T", symbol: () => "S");
      expect(result, "T");
    });

    test('symbol', () async {
      var value = DataType.symbol;
      final result = value.when(temperature: () => "T", symbol: () => "S");
      expect(result, "S");
    });
  });
}
