import 'package:vigor_enterprise_currency_converter_task/core/network_service/api_result.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/rate.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/repositories/currencies_repository.dart';

class GetRateCurrenciesUseCase {
  final CurrenciesRepository currenciesRepository;

  GetRateCurrenciesUseCase(this.currenciesRepository);

  Future<ApiResult<RateEntity>> execute(
      {required String apiKey,
      required String currencies,
      required String baseCurrency}) async {
    return await currenciesRepository.getRate(
        apiKey: apiKey, currencies: currencies, baseCurrency: baseCurrency);
  }
}
