class CurrencyGetRateResponseModel {
  final Map<String, double> data;

  CurrencyGetRateResponseModel({required this.data});

  factory CurrencyGetRateResponseModel.fromJson(Map<String, dynamic> json) {
    Map<String, double> tempData = {};
    json['data'].forEach((currency, rate) {
      tempData[currency] = rate.toDouble();
    });
    return CurrencyGetRateResponseModel(data: tempData);
  }
}
