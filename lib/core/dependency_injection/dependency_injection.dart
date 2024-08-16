import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vigor_enterprise_currency_converter_task/core/helpers/local_database_helper.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/dio_setup.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/client/currencies_remote_data_source.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/remote/currencies_remote_data_source_implemtnatation.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/repositories/currencies_repository_implementation.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/repositories/currencies_repository.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/usecases/get_all_currencies.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/usecases/get_historic_data.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/usecases/get_rate_use_case.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/presentation/logic/cubit/currencies_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = setupDio();
  getIt.registerLazySingleton<CurrenciesManager>(() => CurrenciesManager());
  //network info
  // getIt.resetLazySingleton<NetworkInfo> ( () => NetworkInfoImpl());

  getIt.registerLazySingleton<CurrenciesWebService>(
      () => CurrenciesWebService(dio));
  //posts data source
  getIt.registerLazySingleton<CurrenciesRemoteDataSourceImplement>(
      () => CurrenciesRemoteDataSourceImplement(getIt<CurrenciesWebService>()));

  //posts data source

  //PostsRemoteDataSourceImplement
  // posts Repository
  getIt.registerLazySingleton<CurrenciesRepository>(() =>
      CurrenciesRepositoryImplementation(
          getIt<CurrenciesRemoteDataSourceImplement>()));
  //use case
  getIt.registerLazySingleton<GetAllCurrenciesUseCase>(
      () => GetAllCurrenciesUseCase(getIt<CurrenciesRepository>()));
  getIt.registerLazySingleton<GetHistoricCurrenciesUseCase>(
      () => GetHistoricCurrenciesUseCase(getIt<CurrenciesRepository>()));
  // getRate use case
  getIt.registerLazySingleton<GetRateCurrenciesUseCase>(
      () => GetRateCurrenciesUseCase(getIt<CurrenciesRepository>()));

  // getHistory
  getIt.registerLazySingleton<CurrenciesCubit>(
    () => CurrenciesCubit(
        getAllCurrenciesUseCase: getIt<GetAllCurrenciesUseCase>(),
        getHistoricCurrenciesUseCase: getIt<GetHistoricCurrenciesUseCase>(),
        getRateCurrenciesUseCase: getIt<GetRateCurrenciesUseCase>()),
  );

  // //network info
}
