import 'package:flutter/material.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/widgets/internet_check.dart';
import 'package:mandoob/features/home/presentation/widgets/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<void> _onRefresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InternetCheckWidget(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: RefreshIndicator(
          color: AppColors.buttonColor,
          backgroundColor: AppColors.scaffoldBackgroundColor,
          onRefresh: _onRefresh,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const HomeBody(),
            ),
          ),
        ),
      ),
    );
  }
}
