// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/cache/cache_helper.dart';
import 'package:mandoob/core/cache/cache_keys.dart';
import 'package:mandoob/core/extensions/navigate.dart';
import 'package:mandoob/core/routes/app_router.dart'; // Make sure the router is correctly imported
import 'package:mandoob/core/services/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.init();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();

  setupGetIt();
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
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        // theme: Provider.of<ThemeProvider>(context).themeData,
        routerConfig: router,
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
