// Mocks generated by Mockito 5.4.4 from annotations
// in vigor_enterprise_currency_converter_task/test/helper/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:mockito/mockito.dart' as _i1;
import 'package:vigor_enterprise_currency_converter_task/core/network_service/api_result.dart'
    as _i2;
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/client/currencies_remote_data_source.dart'
    as _i12;
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/remote/currencies_remote_data_source_implemtnatation.dart'
    as _i6;
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart'
    as _i4;
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currency_get_rate_response_model.dart'
    as _i3;
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/historical_response_model.dart'
    as _i5;
import 'package:vigor_enterprise_currency_converter_task/features/home/data/repositories/currencies_repository_implementation.dart'
    as _i11;
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart'
    as _i9;
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/rate.dart'
    as _i10;
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/repositories/currencies_repository.dart'
    as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeApiResult_0<T> extends _i1.SmartFake implements _i2.ApiResult<T> {
  _FakeApiResult_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCurrencyGetRateResponseModel_1 extends _i1.SmartFake
    implements _i3.CurrencyGetRateResponseModel {
  _FakeCurrencyGetRateResponseModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCurrencyData_2 extends _i1.SmartFake implements _i4.CurrencyData {
  _FakeCurrencyData_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHistoricalResponseModel_3 extends _i1.SmartFake
    implements _i5.HistoricalResponseModel {
  _FakeHistoricalResponseModel_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCurrenciesRemoteDataSourceAbstract_4 extends _i1.SmartFake
    implements _i6.CurrenciesRemoteDataSourceAbstract {
  _FakeCurrenciesRemoteDataSourceAbstract_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CurrenciesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCurrenciesRepository extends _i1.Mock
    implements _i7.CurrenciesRepository {
  MockCurrenciesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.ApiResult<List<_i9.CurrencyEntity>>> getAllCurrencies(
          {required String? apiKey}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCurrencies,
          [],
          {#apiKey: apiKey},
        ),
        returnValue: _i8.Future<_i2.ApiResult<List<_i9.CurrencyEntity>>>.value(
            _FakeApiResult_0<List<_i9.CurrencyEntity>>(
          this,
          Invocation.method(
            #getAllCurrencies,
            [],
            {#apiKey: apiKey},
          ),
        )),
      ) as _i8.Future<_i2.ApiResult<List<_i9.CurrencyEntity>>>);

  @override
  _i8.Future<_i2.ApiResult<_i10.RateEntity>> getHistory({
    required String? apiKey,
    required String? date,
    required String? currencies,
    required String? baseCurrency,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getHistory,
          [],
          {
            #apiKey: apiKey,
            #date: date,
            #currencies: currencies,
            #baseCurrency: baseCurrency,
          },
        ),
        returnValue: _i8.Future<_i2.ApiResult<_i10.RateEntity>>.value(
            _FakeApiResult_0<_i10.RateEntity>(
          this,
          Invocation.method(
            #getHistory,
            [],
            {
              #apiKey: apiKey,
              #date: date,
              #currencies: currencies,
              #baseCurrency: baseCurrency,
            },
          ),
        )),
      ) as _i8.Future<_i2.ApiResult<_i10.RateEntity>>);

  @override
  _i8.Future<_i2.ApiResult<_i10.RateEntity>> getRate({
    required String? apiKey,
    required String? currencies,
    required String? baseCurrency,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRate,
          [],
          {
            #apiKey: apiKey,
            #currencies: currencies,
            #baseCurrency: baseCurrency,
          },
        ),
        returnValue: _i8.Future<_i2.ApiResult<_i10.RateEntity>>.value(
            _FakeApiResult_0<_i10.RateEntity>(
          this,
          Invocation.method(
            #getRate,
            [],
            {
              #apiKey: apiKey,
              #currencies: currencies,
              #baseCurrency: baseCurrency,
            },
          ),
        )),
      ) as _i8.Future<_i2.ApiResult<_i10.RateEntity>>);
}

/// A class which mocks [CurrenciesRemoteDataSourceAbstract].
///
/// See the documentation for Mockito's code generation for more information.
class MockCurrenciesRemoteDataSourceAbstract extends _i1.Mock
    implements _i6.CurrenciesRemoteDataSourceAbstract {
  MockCurrenciesRemoteDataSourceAbstract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i3.CurrencyGetRateResponseModel> getRate({
    required String? apiKey,
    required String? baseCurrency,
    required String? currencies,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRate,
          [],
          {
            #apiKey: apiKey,
            #baseCurrency: baseCurrency,
            #currencies: currencies,
          },
        ),
        returnValue: _i8.Future<_i3.CurrencyGetRateResponseModel>.value(
            _FakeCurrencyGetRateResponseModel_1(
          this,
          Invocation.method(
            #getRate,
            [],
            {
              #apiKey: apiKey,
              #baseCurrency: baseCurrency,
              #currencies: currencies,
            },
          ),
        )),
      ) as _i8.Future<_i3.CurrencyGetRateResponseModel>);

  @override
  _i8.Future<_i4.CurrencyData> getAllCurrencies({required String? apiKey}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCurrencies,
          [],
          {#apiKey: apiKey},
        ),
        returnValue: _i8.Future<_i4.CurrencyData>.value(_FakeCurrencyData_2(
          this,
          Invocation.method(
            #getAllCurrencies,
            [],
            {#apiKey: apiKey},
          ),
        )),
      ) as _i8.Future<_i4.CurrencyData>);

  @override
  _i8.Future<_i5.HistoricalResponseModel> getHistory({
    required String? apiKey,
    required String? date,
    required String? currencies,
    required String? baseCurrency,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getHistory,
          [],
          {
            #apiKey: apiKey,
            #date: date,
            #currencies: currencies,
            #baseCurrency: baseCurrency,
          },
        ),
        returnValue: _i8.Future<_i5.HistoricalResponseModel>.value(
            _FakeHistoricalResponseModel_3(
          this,
          Invocation.method(
            #getHistory,
            [],
            {
              #apiKey: apiKey,
              #date: date,
              #currencies: currencies,
              #baseCurrency: baseCurrency,
            },
          ),
        )),
      ) as _i8.Future<_i5.HistoricalResponseModel>);
}

/// A class which mocks [CurrenciesRepositoryImplementation].
///
/// See the documentation for Mockito's code generation for more information.
class MockCurrenciesRepositoryImplementation extends _i1.Mock
    implements _i11.CurrenciesRepositoryImplementation {
  MockCurrenciesRepositoryImplementation() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.CurrenciesRemoteDataSourceAbstract
      get currenciesRemoteDataSourceAbstract => (super.noSuchMethod(
            Invocation.getter(#currenciesRemoteDataSourceAbstract),
            returnValue: _FakeCurrenciesRemoteDataSourceAbstract_4(
              this,
              Invocation.getter(#currenciesRemoteDataSourceAbstract),
            ),
          ) as _i6.CurrenciesRemoteDataSourceAbstract);

  @override
  _i8.Future<_i2.ApiResult<List<_i9.CurrencyEntity>>> getAllCurrencies(
          {required String? apiKey}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCurrencies,
          [],
          {#apiKey: apiKey},
        ),
        returnValue: _i8.Future<_i2.ApiResult<List<_i9.CurrencyEntity>>>.value(
            _FakeApiResult_0<List<_i9.CurrencyEntity>>(
          this,
          Invocation.method(
            #getAllCurrencies,
            [],
            {#apiKey: apiKey},
          ),
        )),
      ) as _i8.Future<_i2.ApiResult<List<_i9.CurrencyEntity>>>);

  @override
  _i8.Future<_i2.ApiResult<_i10.RateEntity>> getHistory({
    required String? apiKey,
    required String? date,
    required String? currencies,
    required String? baseCurrency,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getHistory,
          [],
          {
            #apiKey: apiKey,
            #date: date,
            #currencies: currencies,
            #baseCurrency: baseCurrency,
          },
        ),
        returnValue: _i8.Future<_i2.ApiResult<_i10.RateEntity>>.value(
            _FakeApiResult_0<_i10.RateEntity>(
          this,
          Invocation.method(
            #getHistory,
            [],
            {
              #apiKey: apiKey,
              #date: date,
              #currencies: currencies,
              #baseCurrency: baseCurrency,
            },
          ),
        )),
      ) as _i8.Future<_i2.ApiResult<_i10.RateEntity>>);

  @override
  _i8.Future<_i2.ApiResult<_i10.RateEntity>> getRate({
    required String? apiKey,
    required String? currencies,
    required String? baseCurrency,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRate,
          [],
          {
            #apiKey: apiKey,
            #currencies: currencies,
            #baseCurrency: baseCurrency,
          },
        ),
        returnValue: _i8.Future<_i2.ApiResult<_i10.RateEntity>>.value(
            _FakeApiResult_0<_i10.RateEntity>(
          this,
          Invocation.method(
            #getRate,
            [],
            {
              #apiKey: apiKey,
              #currencies: currencies,
              #baseCurrency: baseCurrency,
            },
          ),
        )),
      ) as _i8.Future<_i2.ApiResult<_i10.RateEntity>>);
}

/// A class which mocks [CurrenciesWebService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCurrenciesApiServices extends _i1.Mock
    implements _i12.CurrenciesWebService {
  MockCurrenciesApiServices() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i4.CurrencyData> getAllCurrencies(String? apiKey) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCurrencies,
          [apiKey],
        ),
        returnValue: _i8.Future<_i4.CurrencyData>.value(_FakeCurrencyData_2(
          this,
          Invocation.method(
            #getAllCurrencies,
            [apiKey],
          ),
        )),
      ) as _i8.Future<_i4.CurrencyData>);

  @override
  _i8.Future<_i5.HistoricalResponseModel> getHistory(
    String? apiKey,
    String? date,
    String? currencies,
    String? baseCurrency,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getHistory,
          [
            apiKey,
            date,
            currencies,
            baseCurrency,
          ],
        ),
        returnValue: _i8.Future<_i5.HistoricalResponseModel>.value(
            _FakeHistoricalResponseModel_3(
          this,
          Invocation.method(
            #getHistory,
            [
              apiKey,
              date,
              currencies,
              baseCurrency,
            ],
          ),
        )),
      ) as _i8.Future<_i5.HistoricalResponseModel>);

  @override
  _i8.Future<_i3.CurrencyGetRateResponseModel> getRate(
    String? apiKey,
    String? baseCurrency,
    String? currencies,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRate,
          [
            apiKey,
            baseCurrency,
            currencies,
          ],
        ),
        returnValue: _i8.Future<_i3.CurrencyGetRateResponseModel>.value(
            _FakeCurrencyGetRateResponseModel_1(
          this,
          Invocation.method(
            #getRate,
            [
              apiKey,
              baseCurrency,
              currencies,
            ],
          ),
        )),
      ) as _i8.Future<_i3.CurrencyGetRateResponseModel>);
}
