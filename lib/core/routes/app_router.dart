import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:mandoob/features/auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:mandoob/features/history/logic/history_cubit.dart';
import 'package:mandoob/features/history/presentation/dates_view.dart';
import 'package:mandoob/features/history/presentation/history_view.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_cubit.dart';
import 'package:mandoob/features/home/presentation/view/home_view.dart';
import 'package:mandoob/features/onboarding/presentation/onboarding_screen_view.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_cubit.dart';
import 'package:mandoob/features/profile/presentation/profile_screen.dart';
import 'package:mandoob/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  static const String splash = "/";
  static const String onBoarding = "/onBoarding";
  static const String signIn = "/SignIn";
  static const String home = "/Home";
  static const String profile = "/Profile";
  static const String history = "/History";
  static const String dates = "/Dates";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case signIn:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: const SignInView(),
          ),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getit<HomeMandopDetailsCubit>()..getMandopDetailsHomeData(),
            child: const HomeView(),
          ),
          //  builder: (_) =>
          //
          // MultiBlocProvider(
          //   providers: [
          //     BlocProvider(create: (context) => getit<HomeCubit>()),
          //     BlocProvider(
          //         create: (context) => getit<HomeMandopDetailsCubit>()
          //           ..getMandopDetailsHomeData()),
          //   ],
          // child: const HomeView(),
          // ),
        );
      case profile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<ProfileCubit>(),
            child: const ProfileView(),
          ),
        );
      case history:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<HistoryCubit>()..getHistoryData(),
            child: const HistoryScreenView(),
          ),
        );
      case dates:
        return MaterialPageRoute(builder: (_) => const DatesView());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page Not Found')),
          ),
        );
    }
  }
}
