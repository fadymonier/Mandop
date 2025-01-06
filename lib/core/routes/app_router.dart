import 'package:go_router/go_router.dart';
import 'package:mandoob/features/auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:mandoob/features/history/presentation/dates_view.dart';
import 'package:mandoob/features/history/presentation/history_view.dart';
import 'package:mandoob/features/home/presentation/view/home_view.dart';
import 'package:mandoob/features/profile/presentation/profile_screen.dart';
import 'package:mandoob/features/splash/presentation/view/splash_view.dart';

import '../../features/onboarding/presentation/onboarding_screen_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnboardingScreen(),
  ),
  GoRoute(
    path: "/SignIn",
    builder: (context, state) => const SignInView(),
  ),
  GoRoute(
    path: "/Home",
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: "/Profile",
    builder: (context, state) => const ProfileView(),
  ),
  GoRoute(
    path: "/History",
    builder: (context, state) => const HistoryScreenView(),
  ),
  GoRoute(
    path: "/Dates",
    builder: (context, state) => const DatesView(),
  ),
]);
