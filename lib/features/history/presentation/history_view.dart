import 'package:flutter/material.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/history/widgets/history_app_bar.dart';
import 'package:mandoob/features/history/widgets/history_body.dart';

class HistoryScreenView extends StatelessWidget {
  const HistoryScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const HistoryAppBar(
        title: 'تسليم النقود',
        navigatePath: '/Home',
      ),
      body: const HistoryBody(),
    );
  }
}
