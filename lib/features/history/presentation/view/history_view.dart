// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/history/presentation/widgets/history_app_bar.dart';
import 'package:mandoob/features/history/presentation/widgets/history_body.dart';

class HistoryScreenView extends StatelessWidget {
  const HistoryScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const HistoryAppBar(
        title: "نقاط الشهر ",
        navigatePath: '/Dates',
      ),
      body: const HistoryBody(),
    );
  }
}
