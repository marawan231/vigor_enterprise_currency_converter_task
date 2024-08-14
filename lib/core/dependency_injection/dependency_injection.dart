import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/dio_setup.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = setupDio();
  getIt.registerLazySingleton<Dio>(() => dio);
  //shared preferences
  // getIt.registerLazySingleton<PostsManager>(() => PostsManager());
  // //network info
}
