import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/values.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/helpers/local_database_helper.dart';
import 'package:vigor_enterprise_currency_converter_task/core/navigator/navigator.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/network_exceptions.dart';
import 'package:vigor_enterprise_currency_converter_task/core/utils/enums.dart';
import 'package:vigor_enterprise_currency_converter_task/core/utils/utils.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/rate.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/usecases/get_all_currencies.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/usecases/get_historic_data.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/usecases/get_rate_use_case.dart';

part 'currencies_state.dart';
part 'currencies_cubit.freezed.dart';

class CurrenciesCubit extends Cubit<CurrenciesState> {
  CurrenciesCubit(
      {required this.getAllCurrenciesUseCase,
      required this.getHistoricCurrenciesUseCase,
      required this.getRateCurrenciesUseCase})
      : super(const _Initial());

  final GetAllCurrenciesUseCase getAllCurrenciesUseCase;
  final GetHistoricCurrenciesUseCase getHistoricCurrenciesUseCase;
  final GetRateCurrenciesUseCase getRateCurrenciesUseCase;

  void loadCurrencies() async {
    emit(state.copyWith(getAllCurrenciesState: RequestState.loading));
    final result =
        await getAllCurrenciesUseCase.execute(apiKey: AppConstants.apiKey);
    result.when(
      success: (currencies) async {
        emit(state.copyWith(
            currencies: currencies,
            getAllCurrenciesState: RequestState.success));
      },
      failure: (message) async {
        if (message == const DioExceptionType.noInternetConnection()) {
          //get from local storage
          List<CurrencyEntity> getCurrencies =
              await getIt<CurrenciesManager>().getCurrencies();

          emit(state.copyWith(
              currencies: getCurrencies,
              getAllCurrenciesState: RequestState.success));
        } else {
          Utils.showErrorSnackBar(
              message: DioExceptionType.getErrorMessage(message));

          List<CurrencyEntity> getCurrencies =
              await getIt<CurrenciesManager>().getCurrencies();
          emit(state.copyWith(
              currencies: getCurrencies,
              getAllCurrenciesState: RequestState.error));
        }
      },
    );
  }

  void changeFromCurrency(
      CurrencyEntity choiceModel, List<CurrencyEntity> currencies) {
    for (var element in currencies) {
      element.isSelected = false;
    }
    choiceModel.isSelected = true;
    emit(state.copyWith(
      currencies: currencies,
      code: choiceModel.code,
    ));
  }

  void setSelectedSenderWallet(CurrencyEntity? currency) {
    emit(state.copyWith(fromCurrency: currency));
    Go.back();
  }

  //changeToCurrency
  void changeToCurrency(
      CurrencyEntity choiceModel, List<CurrencyEntity> currencies) {
    for (var element in currencies) {
      element.isSelected = false;
    }
    choiceModel.isSelected = true;
    // emit(state.copyWith());
    emit(state.copyWith(currencies: currencies, toCode: choiceModel.code));
  }

  void setSelectedRecieverWallet(CurrencyEntity? currency) {
    emit(state.copyWith(toCurrency: currency));
    Go.back();
  }

  //deselect all currencies
  void deselectAllCurrencies() {
    for (var element in state.currencies!) {
      element.isSelected = false;
    }
    emit(state.copyWith());
  }

  //get history
  Future<void> getHistory({
    required String date,
  }) async {
    emit(state.copyWith(getHistoryState: RequestState.loading));
    final result = await getHistoricCurrenciesUseCase.execute(
        apiKey: AppConstants.apiKey,
        date: date,
        currencies: 'EUR',
        baseCurrency: 'USD');
    result.when(
      success: (historyRate) async {
        emit(state.copyWith(
            historyRate: historyRate, getHistoryState: RequestState.success));
      },
      failure: (message) async {
        Utils.showErrorSnackBar(
            message: DioExceptionType.getErrorMessage(message));
        emit(state.copyWith(getHistoryState: RequestState.error));
      },
    );
  }

  //get rate
  void getRate() async {
    emit(state.copyWith(getRateState: RequestState.loading));
    final result = await getRateCurrenciesUseCase.execute(
        apiKey: AppConstants.apiKey,
        currencies: state.toCurrency?.code ?? "EUR",
        baseCurrency: state.fromCurrency?.code ?? "USD");
    result.when(
      success: (rate) async {
        emit(state.copyWith(rate: rate, getRateState: RequestState.success));
      },
      failure: (message) async {
        Utils.showErrorSnackBar(
            message: DioExceptionType.getErrorMessage(message));

        emit(state.copyWith(getRateState: RequestState.error));
      },
    );
  }
}
