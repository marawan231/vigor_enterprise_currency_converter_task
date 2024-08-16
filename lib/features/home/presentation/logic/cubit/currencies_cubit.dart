import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/values.dart';
import 'package:vigor_enterprise_currency_converter_task/core/dependency_injection/dependency_injection.dart';
import 'package:vigor_enterprise_currency_converter_task/core/helpers/local_database_helper.dart';
import 'package:vigor_enterprise_currency_converter_task/core/navigator/navigator.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/network_exceptions.dart';
import 'package:vigor_enterprise_currency_converter_task/core/utils/enums.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/usecases/get_all_currencies.dart';

part 'currencies_state.dart';
part 'currencies_cubit.freezed.dart';

class CurrenciesCubit extends Cubit<CurrenciesState> {
  CurrenciesCubit({required this.getAllCurrenciesUseCase})
      : super(const _Initial());

  final GetAllCurrenciesUseCase getAllCurrenciesUseCase;

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

          emit(state.copyWith(currencies: getCurrencies));
        } else {
          List<CurrencyEntity> getCurrencies =
              await getIt<CurrenciesManager>().getCurrencies();
          emit(state.copyWith(currencies: getCurrencies));
        }
      },
    );
  }

  void changeFromCurrency(
      CurrencyEntity choiceModel, List<CurrencyEntity> currencies) {
    // emit(state.copyWith(currencies: state.currencies));
    // log('changeFromCurrency' +
    //     choiceModel.code.toString() +
    // currencies.toString());
    // emit(state.copyWith());
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
}
