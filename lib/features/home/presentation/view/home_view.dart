import 'package:flutter/material.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/widgets/internet_check.dart';
import 'package:mandoob/features/home/presentation/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return InternetCheckWidget(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: const HomeBody(),
      ),
    );
  }
}
