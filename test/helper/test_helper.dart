import 'package:mockito/annotations.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/client/currencies_remote_data_source.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/remote/currencies_remote_data_source_implemtnatation.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/repositories/currencies_repository_implementation.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/domain/repositories/currencies_repository.dart';

@GenerateMocks([
  CurrenciesRepository,
  CurrenciesRemoteDataSourceAbstract,
  CurrenciesRepositoryImplementation
  
], customMocks: [
  MockSpec<CurrenciesWebService>(as: #MockCurrenciesApiServices)
])
void main() {}
