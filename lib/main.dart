import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/cache/cache_helper.dart';
import 'package:mandoob/core/cache/cache_keys.dart';
import 'package:mandoob/core/extensions/navigate.dart';
import 'package:mandoob/core/routes/app_router.dart';
import 'package:mandoob/core/services/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await SharedPrefHelper.init();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();

  runApp(
    const MandoobApp(),
  );
}

class MandoobApp extends StatelessWidget {
  const MandoobApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        // initial route
        initialRoute: AppRouter.onBoarding,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken!.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
