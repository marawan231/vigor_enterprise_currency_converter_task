import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/helpers/local_database_helper.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/api_result.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/network_exceptions.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/remote/currencies_remote_data_source_implemtnatation.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/repositories/currencies_repository.dart';

class CurrenciesRepositoryImplementation extends CurrenciesRepository {
  final CurrenciesRemoteDataSourceAbstract currenciesRemoteDataSourceAbstract;

  CurrenciesRepositoryImplementation(this.currenciesRemoteDataSourceAbstract);

  @override
  Future<ApiResult<List<CurrencyEntity>>> getAllCurrencies(
      {required String apiKey}) async {
    try {
      var response = await currenciesRemoteDataSourceAbstract.getAllCurrencies(
          apiKey: apiKey);

      List<CurrencyEntity> savedResponse =
          await getIt<CurrenciesManager>().getCurrencies();

      List<CurrencyEntity> currencies = [];
      for (var element in response.data.keys) {
        // log(element);
        currencies.add(CurrencyEntity(
          name: response.data[element]!.name.toString(),
          symbol: response.data[element]!.symbol.toString(),
          code: response.data[element]!.code.toString(),
        ));
      }
      // NetworkIn
      if ((savedResponse.isEmpty ||
          savedResponse == [] ||
          // ignore: unnecessary_null_comparison
          savedResponse == null)) {
        return ApiResult.success(currencies);
      } else {
        return ApiResult.success(savedResponse);
      }
    } catch (error, stacktrace) {
      return Future.value(
        ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace),
        ),
      );
    }
  }
}
