import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/routes/app_router.dart';
import 'package:mandoob/core/utils/app_colors.dart';

void main() {
  runApp(const MandoobApp());
}

class MandoobApp extends StatelessWidget {
  const MandoobApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
        routerConfig: router,
      ),
    );
  }
}
