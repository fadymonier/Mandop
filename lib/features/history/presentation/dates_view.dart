import 'package:flutter/material.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/history/presentation/widgets/dates_body.dart';
import 'package:mandoob/features/history/presentation/widgets/history_app_bar.dart';

class DatesView extends StatelessWidget {
  const DatesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const HistoryAppBar(
        title: "السجلات",
        navigatePath: '/History',
      ),
      body: const DatesBody(),
    );
  }
}
