import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/history/logic/history_cubit/history_cubit.dart';
import 'package:mandoob/features/history/logic/history_cubit/history_state.dart';
import 'package:mandoob/features/history/presentation/models/history_body_model.dart';

class HistoryRow extends StatefulWidget {
  const HistoryRow({super.key});

  @override
  State<HistoryRow> createState() => _HistoryRowState();
}

class _HistoryRowState extends State<HistoryRow> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<HistoryCubit>()..getHistoryData(),
      child: BlocBuilder<HistoryCubit, HistoryState>(
        builder: (context, state) {
          return state.when(
            historyLoading: () => Center(
              child: SizedBox(
                height: 50.h,
                width: 50.w,
                child: LoadingIndicator(
                  indicatorType: Indicator.lineScalePulseOut,
                  colors: [AppColors.navBarIconSelectedColor],
                ),
              ),
            ),
            historySuccess: (response) {
              final data = response.data;

              // لو البيانات غير متوفرة
              if (data.totalPoints.isEmpty ||
                  data.month.isEmpty ||
                  data.year == 0) {
                return Center(
                  child: Text(
                    'البيانات غير متوفرة',
                    style:
                        GoogleFonts.cairo(color: Colors.red, fontSize: 16.sp),
                  ),
                );
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HistoryBodyContainerModel(
                    title: 'النقاط',
                    variable: data.totalPoints,
                    subTitle: 'نقطة',
                    imagePath: 'assets/images/historyPoints.png',
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/Dates'),
                    child: HistoryBodyContainerModel(
                      title: 'الشهر',
                      variable: data.month,
                      subTitle: data.year.toString(),
                      imagePath: 'assets/images/historyMonths.png',
                    ),
                  ),
                ],
              );
            },
            initial: () {
              return const SizedBox.shrink();
            },
            historyError: (errorHandler) {
              return Center(
                child: Text(
                  'حدث خطأ غير متوقع',
                  style: GoogleFonts.cairo(color: Colors.red, fontSize: 16.sp),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
