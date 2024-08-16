// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrenciesState<T> {
  RequestState get getAllCurrenciesState => throw _privateConstructorUsedError;
  List<CurrencyEntity>? get currencies =>
      throw _privateConstructorUsedError; //selected from currency
  CurrencyEntity? get fromCurrency =>
      throw _privateConstructorUsedError; //selected to currency
  CurrencyEntity? get toCurrency =>
      throw _privateConstructorUsedError; //bool to check if the button is enabled
  String? get code => throw _privateConstructorUsedError; //to code
  String? get toCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrenciesStateCopyWith<T, CurrenciesState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesStateCopyWith<T, $Res> {
  factory $CurrenciesStateCopyWith(
          CurrenciesState<T> value, $Res Function(CurrenciesState<T>) then) =
      _$CurrenciesStateCopyWithImpl<T, $Res, CurrenciesState<T>>;
  @useResult
  $Res call(
      {RequestState getAllCurrenciesState,
      List<CurrencyEntity>? currencies,
      CurrencyEntity? fromCurrency,
      CurrencyEntity? toCurrency,
      String? code,
      String? toCode});
}

/// @nodoc
class _$CurrenciesStateCopyWithImpl<T, $Res, $Val extends CurrenciesState<T>>
    implements $CurrenciesStateCopyWith<T, $Res> {
  _$CurrenciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllCurrenciesState = null,
    Object? currencies = freezed,
    Object? fromCurrency = freezed,
    Object? toCurrency = freezed,
    Object? code = freezed,
    Object? toCode = freezed,
  }) {
    return _then(_value.copyWith(
      getAllCurrenciesState: null == getAllCurrenciesState
          ? _value.getAllCurrenciesState
          : getAllCurrenciesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      currencies: freezed == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>?,
      fromCurrency: freezed == fromCurrency
          ? _value.fromCurrency
          : fromCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      toCurrency: freezed == toCurrency
          ? _value.toCurrency
          : toCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      toCode: freezed == toCode
          ? _value.toCode
          : toCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res>
    implements $CurrenciesStateCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {RequestState getAllCurrenciesState,
      List<CurrencyEntity>? currencies,
      CurrencyEntity? fromCurrency,
      CurrencyEntity? toCurrency,
      String? code,
      String? toCode});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$CurrenciesStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllCurrenciesState = null,
    Object? currencies = freezed,
    Object? fromCurrency = freezed,
    Object? toCurrency = freezed,
    Object? code = freezed,
    Object? toCode = freezed,
  }) {
    return _then(_$InitialImpl<T>(
      getAllCurrenciesState: null == getAllCurrenciesState
          ? _value.getAllCurrenciesState
          : getAllCurrenciesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      currencies: freezed == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>?,
      fromCurrency: freezed == fromCurrency
          ? _value.fromCurrency
          : fromCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      toCurrency: freezed == toCurrency
          ? _value.toCurrency
          : toCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      toCode: freezed == toCode
          ? _value.toCode
          : toCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl(
      {this.getAllCurrenciesState = RequestState.initial,
      final List<CurrencyEntity>? currencies,
      this.fromCurrency,
      this.toCurrency,
      this.code,
      this.toCode})
      : _currencies = currencies;

  @override
  @JsonKey()
  final RequestState getAllCurrenciesState;
  final List<CurrencyEntity>? _currencies;
  @override
  List<CurrencyEntity>? get currencies {
    final value = _currencies;
    if (value == null) return null;
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//selected from currency
  @override
  final CurrencyEntity? fromCurrency;
//selected to currency
  @override
  final CurrencyEntity? toCurrency;
//bool to check if the button is enabled
  @override
  final String? code;
//to code
  @override
  final String? toCode;

  @override
  String toString() {
    return 'CurrenciesState<$T>(getAllCurrenciesState: $getAllCurrenciesState, currencies: $currencies, fromCurrency: $fromCurrency, toCurrency: $toCurrency, code: $code, toCode: $toCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<T> &&
            (identical(other.getAllCurrenciesState, getAllCurrenciesState) ||
                other.getAllCurrenciesState == getAllCurrenciesState) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(other.fromCurrency, fromCurrency) ||
                other.fromCurrency == fromCurrency) &&
            (identical(other.toCurrency, toCurrency) ||
                other.toCurrency == toCurrency) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.toCode, toCode) || other.toCode == toCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getAllCurrenciesState,
      const DeepCollectionEquality().hash(_currencies),
      fromCurrency,
      toCurrency,
      code,
      toCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      __$$InitialImplCopyWithImpl<T, _$InitialImpl<T>>(this, _$identity);
}

abstract class _Initial<T> implements CurrenciesState<T> {
  const factory _Initial(
      {final RequestState getAllCurrenciesState,
      final List<CurrencyEntity>? currencies,
      final CurrencyEntity? fromCurrency,
      final CurrencyEntity? toCurrency,
      final String? code,
      final String? toCode}) = _$InitialImpl<T>;

  @override
  RequestState get getAllCurrenciesState;
  @override
  List<CurrencyEntity>? get currencies;
  @override //selected from currency
  CurrencyEntity? get fromCurrency;
  @override //selected to currency
  CurrencyEntity? get toCurrency;
  @override //bool to check if the button is enabled
  String? get code;
  @override //to code
  String? get toCode;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
