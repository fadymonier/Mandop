import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/history/logic/history_cubit.dart';
import 'package:mandoob/features/history/logic/history_state.dart';
import 'package:mandoob/features/history/presentation/widgets/history_row.dart';
import 'package:mandoob/features/history/presentation/widgets/mandop_history_profile_image.dart';
import 'package:mandoob/features/navbar/history_navbar.dart';

class HistoryBody extends StatelessWidget {
  const HistoryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          const MandopHistoryProfileImage(),
          SizedBox(
            height: 20.h,
          ),
          BlocBuilder<HistoryCubit, HistoryState>(
            buildWhen: (previous, current) =>
                current is HistoryLoading ||
                current is HistorySuccess ||
                current is HistoryError,
            builder: (context, state) {
              return state.maybeWhen(
                historyLoading: () => CircularProgressIndicator(
                  color: AppColors.buttonColor,
                ),
                historySuccess: (historyResponse) {
                  var historyData = historyResponse.data;
                  // Assuming you need to pass a specific YearData from the map
                  var yearData = historyData['someKey']?['someInnerKey'];
                  if (yearData != null) {
                    return HistoryRow(historyData: yearData);
                  } else {
                    return const Center(child: Text('No data available'));
                  }
                },
                historyError: (error) {
                  return Center(child: Text('Error: $error')); // Show error
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          const Spacer(),
          const HistoryNavbar(),
        ],
      ),
    );
  }
}
