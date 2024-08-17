// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'currencies_cubit.dart';

@freezed
class CurrenciesState<T> with _$CurrenciesState<T> {
  const factory CurrenciesState({
    @Default(RequestState.initial) RequestState getAllCurrenciesState,
    List<CurrencyEntity>? currencies,
    //selected from currency
    CurrencyEntity? fromCurrency,
    //selected to currency
    CurrencyEntity? toCurrency,

    //bool to check if the button is enabled
    String? code,
    //to code
    String? toCode,
    //getHistoryState
    @Default(RequestState.initial) RequestState getHistoryState,
    //history rate
    RateEntity? historyRate,
    //get rate state
    @Default(RequestState.initial) RequestState getRateState,
    //rate
    RateEntity? rate,

    //disable button
  }) = _Initial;
}
