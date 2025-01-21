import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_cubit.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_state.dart';

class OrdersNumberWidget extends StatelessWidget {
  const OrdersNumberWidget({super.key});

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
              width: 172.w,
              height: 145.h,
              child: const SizedBox.shrink(),
            );
          },
          homeSuccess: (homeResponseModel) {
            final ordersNumber = homeResponseModel.data?.ordersNumber ?? 0;

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
                      SizedBox(width: 10.w),
                      Image.asset(
                        "assets/images/ordersImage.png",
                        width: 44.w,
                        height: 57.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ordersNumber.toString(),
                            style: GoogleFonts.cairo(
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          Text(
                            "عدد الأوردرات",
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
                  'Error!',
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
