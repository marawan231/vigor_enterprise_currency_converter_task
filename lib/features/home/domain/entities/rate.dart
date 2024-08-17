import 'package:equatable/equatable.dart';

class RateEntity extends Equatable {
  final String? date;
  final num rate;

  const RateEntity({this.date, required this.rate});

  factory RateEntity.fromJson(Map<String, dynamic> json) {
    return RateEntity(
      date: json['date'],
      rate: json['rate'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'rate': rate,
    };
  }

  @override
  List<Object?> get props => [date, rate];
}
