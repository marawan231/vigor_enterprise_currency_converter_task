import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/client/currencies_remote_data_source.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart';

abstract class CurrenciesRemoteDataSourceAbstract {
  Future<CurrencyData> getAllCurrencies({required String apiKey});
}

class CurrenciesRemoteDataSourceImplement
    implements CurrenciesRemoteDataSourceAbstract {
  final CurrenciesWebService postsWebService;

  CurrenciesRemoteDataSourceImplement(this.postsWebService);

  @override
  Future<CurrencyData> getAllCurrencies({required String apiKey}) async {
    return await postsWebService.getAllCurrencies(apiKey);
  }
}
