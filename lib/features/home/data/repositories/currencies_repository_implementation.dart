import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/helpers/local_database_helper.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/api_result.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/network_exceptions.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/remote/currencies_remote_data_source_implemtnatation.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/rate.dart';
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
        currencies.add(CurrencyEntity(
          name: response.data[element]!.name.toString(),
          symbol: response.data[element]!.symbol.toString(),
          code: response.data[element]!.code.toString(),
        ));
      }
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

  @override
  Future<ApiResult<RateEntity>> getHistory(
      {required String apiKey,
      required String date,
      required String currencies,
      required String baseCurrency}) async {
    var result = await currenciesRemoteDataSourceAbstract.getHistory(
        apiKey: apiKey,
        date: date,
        currencies: currencies,
        baseCurrency: baseCurrency);

    num rate = 0;

    result.data.forEach((key, value) {
      rate = value.entries.first.value;
    });

    try {
      return Future.value(
          ApiResult.success(RateEntity(date: date, rate: rate)));
    } catch (error, stacktrace) {
      return Future.value(
        ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace),
        ),
      );
    }
  }

  //get rate
  @override
  Future<ApiResult<RateEntity>> getRate(
      {required String apiKey,
      required String currencies,
      required String baseCurrency}) async {
    var result = await currenciesRemoteDataSourceAbstract.getRate(
        apiKey: apiKey, currencies: currencies, baseCurrency: baseCurrency);

    num rate = 0;

    result.data.forEach((key, value) {
      rate = value;
    });

    try {
      return Future.value(ApiResult.success(RateEntity(rate: rate)));
    } catch (error, stacktrace) {
      return Future.value(
        ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace),
        ),
      );
    }
  }
}
