import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
        // bloc: getit<HistoryCubit>()..getHistoryData(),
        builder: (context, state) {
          return state.when(
              historyLoading: () => Center(
                      child: CircularProgressIndicator(
                    color: AppColors.navBarIconSelectedColor,
                  )),
              historySuccess: (response) {
                if (response.data.points.isEmpty) {
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
                      variable: response
                              .data.points["2025"]?["January"]?.totalPoints ??
                          "",
                      subTitle: 'نقطه',
                      imagePath: 'assets/images/historyPoints.png',
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamed(context, '/Dates');
                      },
                      child: HistoryBodyContainerModel(
                        title: 'الشهر',
                        variable:
                            response.data.points["2025"]?["January"]?.month ??
                                "",
                        subTitle: response.data.points["2025"]?["January"]?.year
                                .toString() ??
                            "",
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
                    'Failed to load data',
                    style:
                        GoogleFonts.cairo(color: Colors.red, fontSize: 16.sp),
                  ),
                );
              });
        },
      ),
    );
  }
}
