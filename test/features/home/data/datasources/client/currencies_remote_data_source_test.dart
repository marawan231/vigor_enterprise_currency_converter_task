// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:vigor_enterprise_currency_converter_task/core/constants/values.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/remote/currencies_remote_data_source_implemtnatation.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/models/currencies_response_model.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/entities/currency.dart';
import '../../../../../helper/json_reader.dart';
import '../../../../../helper/test_helper.mocks.dart';

void main() {
  late MockCurrenciesApiServices mockCurrenciesApiServices;
  late CurrenciesRemoteDataSourceImplement currenciesRemoteDataSource;

  setUp(() {
    mockCurrenciesApiServices = MockCurrenciesApiServices();
    currenciesRemoteDataSource =
        CurrenciesRemoteDataSourceImplement(mockCurrenciesApiServices);
  });

  group('getAllCurrencies', () {
    late List<CurrencyEntity> currencies;
    late CurrencyData tCurrenciesJson;

    setUpAll(() {
      tCurrenciesJson = CurrencyData.fromJson(json
          .decode(readJson('helper/dummy_data/currencies_dummy_data.json')));
      currencies = tCurrenciesJson.data.values
          .map((e) => CurrencyEntity(
                name: e.name,
                symbol: e.symbol,
                code: e.code,
              ))
          .toList();
    });

    test(
        'should return a list of currencies when the call to the API is successful',
        () async {
      // Arrange
      when(mockCurrenciesApiServices.getAllCurrencies(AppConstants.apiKey))
          .thenAnswer((_) async => tCurrenciesJson);

      // Act
      final result = await currenciesRemoteDataSource.getAllCurrencies(
          apiKey: AppConstants.apiKey);

      // Assert
      expect(result, equals(tCurrenciesJson));
      verify(mockCurrenciesApiServices.getAllCurrencies(AppConstants.apiKey))
          .called(1);
      verifyNoMoreInteractions(mockCurrenciesApiServices);
    });

    // Example test for API failure scenario
    test('should throw an exception when the call to the API fails', () async {
      // Arrange
      when(mockCurrenciesApiServices.getAllCurrencies(AppConstants.apiKey))
          .thenThrow(DioException(
              requestOptions: RequestOptions(path: 'currencies'),
              response: Response(
                  requestOptions: RequestOptions(path: 'currencies'),
                  statusCode: 404,
                  data: 'Not Found',
                  headers: Headers())));

      // Act & Assert
      expect(
          () async => await currenciesRemoteDataSource.getAllCurrencies(
              apiKey: AppConstants.apiKey),
          throwsA(isInstanceOf<DioException>()));
    });

    // Add more tests for different scenarios as needed
  });
}
