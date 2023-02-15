import 'package:flutter_test/flutter_test.dart';
import 'package:weather_report/core/extensions.dart';

void main() {
  group('tryGetValue', () {
    test('Success', () async {
      final errors = {1: 'one', 2: 'two', 3: 'three'};

      final result = errors.tryGetValue(key: 1, orElse: () => "unknown");
      expect(result, 'one');
    });

    test('orElse value', () async {
      final errors = {1: 'one', 2: 'two', 3: 'three'};

      final result = errors.tryGetValue(key: 5, orElse: () => "unknown");
      expect(result, 'unknown');
    });
  });
}
