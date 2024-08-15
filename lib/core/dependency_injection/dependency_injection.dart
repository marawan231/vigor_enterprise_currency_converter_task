import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vigor_enterprise_currency_converter_task/core/network_service/dio_setup.dart';
import 'package:vigor_enterprise_currency_converter_task/features/home/data/datasources/client/post_remote_data_source.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = setupDio();
  getIt.registerLazySingleton<Dio>(() => dio);
  // posts web service
  getIt.registerLazySingleton<PostsWebService>(() => PostsWebService(getIt()));
  //shared preferences
  // getIt.registerLazySingleton<PostsManager>(() => PostsManager());
  // //network info
}
