import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_cubit.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_state.dart';

class MandopHomeDetails extends StatelessWidget {
  const MandopHomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeManopDetailsCubit>(
      create: (context) =>
          HomeManopDetailsCubit(getit())..getMandopDetailsHomeData(),
      child: BlocBuilder<HomeManopDetailsCubit, HomeManopDetailsState>(
        builder: (context, state) {
          return state.maybeWhen(
            homeMandopDetailsLoading: () {
              return Center(
                child: CircularProgressIndicator(
                  color: AppColors.buttonColor,
                ),
              );
            },
            homeMandopDetailsSuccess: (response) {
              final mandopData = response;

              if (mandopData.firstName.isEmpty) {
                return Center(
                  child: Text(
                    'البيانات غير متوفرة',
                    style: TextStyle(color: Colors.red, fontSize: 16.sp),
                  ),
                );
              }

              return Container(
                width: double.infinity,
                height: 120.h,
                color: AppColors.whiteColor,
                child: Padding(
                  padding: EdgeInsets.all(18.0.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/notify.png",
                        width: 50.w,
                        height: 50.h,
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${mandopData.firstName} ${mandopData.lastName}",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "مندوب مبيعات",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.w),
                      ClipOval(
                        child: Image.network(
                          mandopData.profileImage,
                          width: 50.w,
                          height: 50.h,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                color: AppColors.buttonColor,
                                strokeWidth: 2.0,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 50.h,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            homeMandopDetailsError: (errorMessage) {
              return Center(
                child: Text(
                  'Failed to load data',
                  style: TextStyle(color: Colors.red, fontSize: 16.sp),
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
