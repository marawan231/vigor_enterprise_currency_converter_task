import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';

import '../../../../core/network_service/api_result.dart';

abstract class CurrenciesRepository {
  Future<ApiResult<List<CurrencyEntity>>> getAllCurrencies(
      {required String apiKey});
}
