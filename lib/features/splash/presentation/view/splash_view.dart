import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    delayedNavigate(context, "/onBoarding");
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
              // fit: BoxFit.cover,
              height: 150.h,
            )
          ],
        ),
      ),
    );
  }
}

void delayedNavigate(BuildContext context, String path) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, path);
    },
  );
}
