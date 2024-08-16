// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class CurrencyEntity extends Equatable {
  final String name;
  final String symbol;
  final String code;
  //isSelected
  bool? isSelected;

  CurrencyEntity({
    required this.name,
    required this.symbol,
    required this.code,
    this.isSelected,
  });
//to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'symbol': symbol,
      'code': code,
    };
  }

//from json
  factory CurrencyEntity.fromJson(Map<String, dynamic> json) {
    return CurrencyEntity(
      name: json['name'],
      symbol: json['symbol'],
      code: json['code'],
    );
  }
  @override
  List<Object?> get props => [name, symbol, code, isSelected];
}
