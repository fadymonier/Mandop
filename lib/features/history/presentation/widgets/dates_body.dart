import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:mandoob/core/api/error_handler.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/history/logic/date_cubit/cubit/date_cubit.dart';
import 'package:mandoob/features/history/logic/date_cubit/cubit/date_state.dart';
import 'package:mandoob/features/history/presentation/models/date_model.dart';
import 'package:mandoob/features/navbar/history_navbar.dart';

class DatesBody extends StatelessWidget {
  const DatesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<DateCubit>()..getPointsByMonthData(),
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<DateCubit, DateState>(
              builder: (context, state) {
                return state.when(
                  dateLoading: () => Center(
                    child: SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: LoadingIndicator(
                        indicatorType: Indicator.lineScalePulseOut,
                        colors: [AppColors.navBarIconSelectedColor],
                      ),
                    ),
                  ),
                  dateSuccess: (response) {
                    final pointsHistoryData = response.data.points;

                    final filteredMonths =
                        pointsHistoryData.entries.expand((yearEntry) {
                      return yearEntry.value.entries.where((monthEntry) {
                        final points =
                            int.tryParse(monthEntry.value.totalPoints) ?? 0;
                        return points > 0;
                      }).map((monthEntry) {
                        final monthData = monthEntry.value;
                        return {
                          'month': monthData.month,
                          'year': monthData.year,
                          'points': monthData.totalPoints,
                        };
                      });
                    }).toList();

                    if (filteredMonths.isEmpty) {
                      return Center(
                        child: Text(
                          'لا توجد نقاط لهذا الشهر.',
                          style: GoogleFonts.cairo(
                            color: Colors.red,
                            fontSize: 16.sp,
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10.h,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      itemCount: filteredMonths.length,
                      itemBuilder: (context, index) {
                        final monthData = filteredMonths[index];
                        return DateModel(
                          month: monthData['month'] as String,
                          date: monthData['year'].toString(),
                          ponits: monthData['points'] as String,
                        );
                      },
                    );
                  },
                  initial: () => const SizedBox.shrink(),
                  dateError: (ErrorHandler? errorHandler) {
                    return Center(
                      child: Text(
                        'حدث خطأ غير متوقع',
                        style: GoogleFonts.cairo(
                          color: Colors.red,
                          fontSize: 16.sp,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const Spacer(),
          const HistoryNavbar(),
        ],
      ),
    );
  }
}
