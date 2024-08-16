import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/values.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart';

part 'currencies_remote_data_source.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class CurrenciesWebService {
  factory CurrenciesWebService(Dio dio, {String baseUrl}) =
      _CurrenciesWebService;

  @GET("currencies")
  Future<CurrencyData> getAllCurrencies(
    @Query('apikey') String apiKey,
  );

  // //get history 
  // @GET("historical")
  // Future<CurrencyData> getHistory(
  //   @Query('apikey') String apiKey,
  //   @Query('date') String date,
  // );

}
