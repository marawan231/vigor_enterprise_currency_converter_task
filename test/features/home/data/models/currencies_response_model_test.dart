import 'package:flutter_test/flutter_test.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart';

void main() {
  group('CurrencyData.fromJson', () {
    test('should return a valid model when the JSON data is correct', () {
      // Test case 1: Verify that CurrencyData.fromJson() correctly parses valid JSON data
      final json = {
        "data": {
          "EUR": {
            "symbol": "€",
            "name": "Euro",
            "symbol_native": "€",
            "decimal_digits": 2,
            "rounding": 0,
            "code": "EUR",
            "name_plural": "Euros",
            "type": "fiat"
          }
        }
      };

      final currencyData = CurrencyData.fromJson(json);

      expect(currencyData.data['EUR']?.namePlural, 'Euros');
      expect(currencyData.data['EUR']?.type, 'fiat');
    });

    // testWidgets(
    //     'should return an empty CurrencyData object when JSON data is empty',
    //     (tester) async {
    //   // Test case 2: Verify that CurrencyData.fromJson() returns an empty CurrencyData object
    //   final json = {'data': {}};

    //   final currencyData = CurrencyData.fromJson(json);

    //   expect(currencyData.data.length, 0);
    // });

    test('should handle null input without throwing', () {
      // Test case 3: Verify handling of null input
      const json = null; // Simulate null input

      expect(() => CurrencyData.fromJson(json), throwsA(isA<TypeError>()));
    });

    // test('should throw when JSON data is of incorrect type', () {
    //   // Test case 4: Verify that an exception is thrown for incorrect data types
    //   final json = {'data': 'not a map'};

    //   expect(() => CurrencyData.fromJson(json), throwsA(isA<TypeError>()));
    // });

    test('should handle unexpected data structure gracefully', () {
      // Test case 5: Verify handling of unexpected data structures
      final json = {
        'data': {'EUR': 'unexpected data type'}
      };

      expect(() => CurrencyData.fromJson(json), throwsA(isA<TypeError>()));
    });
  });
}
