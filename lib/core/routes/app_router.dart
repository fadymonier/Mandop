import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mandoob/core/services/service_locator.dart';
import 'package:mandoob/features/auth/sign_in/auth_cubit/cubit/auth_cubit.dart';
import 'package:mandoob/features/auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:mandoob/features/home/presentation/view/content_details_view.dart';
import 'package:mandoob/features/home/presentation/view/home_view.dart';
import 'package:mandoob/features/splash/presentation/view/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/SignIn",
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignInView(),
    ),
  ),
  GoRoute(
    path: "/Home",
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: "/ContentDetails",
    builder: (context, state) => const ContentDetails(
      title: '',
      subTitle: '',
      image: '',
    ),
  ),
]);
