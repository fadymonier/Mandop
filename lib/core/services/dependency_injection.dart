import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mandoob/core/api/api_services.dart';
import 'package:mandoob/core/api/dio_factory.dart';
import 'package:mandoob/features/auth/sign_in/data/repos/login_repo.dart';
import 'package:mandoob/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:mandoob/features/history/data/api/history_api_services.dart';
import 'package:mandoob/features/history/data/repo/points_history_repo.dart';
import 'package:mandoob/features/history/logic/history_cubit.dart';
import 'package:mandoob/features/home/data/api/home_api_service.dart';
import 'package:mandoob/features/home/data/repo/home_mandop_details_repo.dart';
import 'package:mandoob/features/home/data/repo/home_repo.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_cubit.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_cubit.dart';
import 'package:mandoob/features/profile/data/api/profile_api_service.dart';
import 'package:mandoob/features/profile/data/repo/profile_repo.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_cubit.dart';

import '../../features/home/logic/getDataHome/cubit.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  // Home
  getit.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));
  getit.registerLazySingleton<HomeMandopDetailsRepo>(
      () => HomeMandopDetailsRepo(getit()));
  getit.registerFactory<HomeCubit>(() => HomeCubit(getit()));
  getit.registerFactory<HomeMandopDetailsCubit>(
      () => HomeMandopDetailsCubit(getit()));

  // Profile
  getit.registerLazySingleton<ProfileApiService>(() => ProfileApiService(dio));
  getit.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getit()));
  getit.registerFactory<ProfileCubit>(() => ProfileCubit(getit()));

  // History
  getit.registerLazySingleton<HistoryApiService>(() => HistoryApiService(dio));
  getit.registerLazySingleton<PointsHistoryRepo>(
      () => PointsHistoryRepo(getit()));
  getit.registerFactory<HistoryCubit>(() => HistoryCubit(getit()));
  getit.registerFactory<DataCubitFreezed>(() => DataCubitFreezed(getit()));
}
