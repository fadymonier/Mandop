import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mandoob/core/api/api_services.dart';
import 'package:mandoob/core/api/dio_factory.dart';
import 'package:mandoob/features/auth/sign_in/data/repos/login_repo.dart';
import 'package:mandoob/features/auth/sign_in/logic/cubit/login_cubit.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));
}
