import 'package:get_it/get_it.dart';
import 'package:mandoob/core/cache/cache_helper.dart';
import 'package:mandoob/features/auth/sign_in/auth_cubit/cubit/auth_cubit.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
