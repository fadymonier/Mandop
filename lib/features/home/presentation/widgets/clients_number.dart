import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_cubit.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_state.dart';

class ClientsNumberWidget extends StatelessWidget {
  const ClientsNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeLoading ||
          current is HomeSuccess ||
          current is HomeError,
      builder: (context, state) {
        return state.maybeWhen(
          homeLoading: () {
            return SizedBox(
                width: 172.w, height: 145.h, child: const SizedBox.shrink());
          },
          homeSuccess: (homeResponseModel) {
            final customersCounts =
                homeResponseModel.data?.customersCounts ?? 0;

            return Row(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    "assets/images/clientsAndOrdersCard.png",
                    width: 172.w,
                    height: 145.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/clientsImage.png",
                          width: 44.w,
                          height: 57.h,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            customersCounts.toString(),
                            style: GoogleFonts.cairo(
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          Text(
                            "عدد العملاء",
                            style: GoogleFonts.cairo(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 25.w),
                    ],
                  ),
                ]),
              ],
            );
          },
          homeError: (errorHandler) {
            return SizedBox(
              width: 172.w,
              height: 145.h,
              child: Center(
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
