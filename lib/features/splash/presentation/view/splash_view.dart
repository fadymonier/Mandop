// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/cache/cache_helper.dart';
import 'package:mandoob/core/cache/cache_keys.dart';
import 'package:mandoob/core/routes/app_router.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    checkIfLoggedInUser().then((_) {
      delayedNavigate(context);
    });
  }

  Future<void> checkIfLoggedInUser() async {
    String? userToken =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    if (userToken != null && userToken.isNotEmpty) {
      isLoggedInUser = true;
    } else {
      isLoggedInUser = false;
    }
  }

  void delayedNavigate(BuildContext context) {
    if (isLoggedInUser) {
      Navigator.pushReplacementNamed(context, AppRouter.home);
    } else {
      Navigator.pushReplacementNamed(context, AppRouter.onBoarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/app_logo.png",
              height: 150.h,
            )
          ],
        ),
      ),
    );
  }
}
