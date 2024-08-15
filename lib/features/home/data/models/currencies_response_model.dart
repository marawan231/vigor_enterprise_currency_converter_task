class CurrencyData {
  final Map<String, Currency> data;

  CurrencyData({required this.data});

  factory CurrencyData.fromJson(Map<String, dynamic> json) {
    return CurrencyData(
      data: Map<String, Currency>.fromEntries(
        json['data']
            .entries
            .map<MapEntry<String, Currency>>(
              (MapEntry<String, dynamic> entry) => MapEntry<String, Currency>(
                entry.key,
                Currency.fromJson(entry.value as Map<String, dynamic>),
              ),
            )
            .toList(), // Convert the Iterable to a List
      ),
    );
  }
}

class Currency {
  final String symbol;
  final String name;
  final String symbolNative;
  final int decimalDigits;
  final int rounding;
  final String code;
  final String namePlural;
  final String type;

  Currency({
    required this.symbol,
    required this.name,
    required this.symbolNative,
    required this.decimalDigits,
    required this.rounding,
    required this.code,
    required this.namePlural,
    required this.type,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      symbol: json['symbol'],
      name: json['name'],
      symbolNative: json['symbol_native'],
      decimalDigits: json['decimal_digits'],
      rounding: json['rounding'],
      code: json['code'],
      namePlural: json['name_plural'],
      type: json['type'],
    );
  }
}
