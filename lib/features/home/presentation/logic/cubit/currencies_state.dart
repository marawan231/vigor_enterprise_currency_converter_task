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

    //disable button
  }) = _Initial;
}
