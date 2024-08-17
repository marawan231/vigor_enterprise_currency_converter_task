import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/client/currencies_remote_data_source.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currency_get_rate_response_model.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/historical_response_model.dart';

abstract class CurrenciesRemoteDataSourceAbstract {
  Future<CurrencyGetRateResponseModel> getRate(
      {required String apiKey,
      required String baseCurrency,
      required String currencies});

  Future<CurrencyData> getAllCurrencies({required String apiKey});

  Future<HistoricalResponseModel> getHistory(
      {required String apiKey,
      required String date,
      required String currencies,
      required String baseCurrency});
}

class CurrenciesRemoteDataSourceImplement
    implements CurrenciesRemoteDataSourceAbstract {
  final CurrenciesWebService postsWebService;

  CurrenciesRemoteDataSourceImplement(this.postsWebService);

  @override
  Future<CurrencyData> getAllCurrencies({required String apiKey}) async {
    return await postsWebService.getAllCurrencies(apiKey);
  }

  @override
  Future<HistoricalResponseModel> getHistory(
      {required String apiKey,
      required String date,
      required String currencies,
      required String baseCurrency}) {
    return postsWebService.getHistory(apiKey, date, currencies, baseCurrency);
  }

  @override
  Future<CurrencyGetRateResponseModel> getRate(
      {required String apiKey,
      required String baseCurrency,
      required String currencies}) {
    return postsWebService.getRate(apiKey, baseCurrency, currencies);
  }
}
