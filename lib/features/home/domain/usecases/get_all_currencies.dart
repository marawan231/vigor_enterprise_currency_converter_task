import 'package:vigor_enterprise_currency_converter_task/core/network_service/api_result.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/repositories/currencies_repository.dart';

class GetAllCurrenciesUseCase {
  final CurrenciesRepository currenciesRepository;

  GetAllCurrenciesUseCase(this.currenciesRepository);

  Future<ApiResult<List<CurrencyEntity>>> execute(
      {required String apiKey}) async {
    return await currenciesRepository.getAllCurrencies(apiKey: apiKey);
  }
}
