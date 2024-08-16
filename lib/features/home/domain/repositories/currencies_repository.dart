import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/rate.dart';

import '../../../../core/network_service/api_result.dart';

abstract class CurrenciesRepository {
  Future<ApiResult<List<CurrencyEntity>>> getAllCurrencies(
      {required String apiKey});

  Future<ApiResult<RateEntity>> getHistory(
      {required String apiKey,
      required String date,
      required String currencies,
      required String baseCurrency});

  //get rate
  Future<ApiResult<RateEntity>> getRate(
      {required String apiKey,
      required String currencies,
      required String baseCurrency});
}
