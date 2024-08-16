class HistoricalResponseModel {
  final Map<String, Map<String, double>> data;

  HistoricalResponseModel({required this.data});

  factory HistoricalResponseModel.fromJson(Map<String, dynamic> json) {
    Map<String, Map<String, double>> tempData = {};
    json['data'].forEach((date, rates) {
      Map<String, double> currencyRates = {};
      rates.forEach((currency, rate) {
        currencyRates[currency] = rate.toDouble();
      });
      tempData[date] = currencyRates;
    });
    return HistoricalResponseModel(data: tempData);
  }
}
