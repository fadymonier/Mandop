import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:mandoob/core/utils/app_colors.dart';

import '../../../../core/services/dependency_injection.dart';
import '../../logic/getDataHome/cubit.dart';
import '../../logic/getDataHome/state.dart';

class MandopHomeDetails extends StatefulWidget {
  const MandopHomeDetails({super.key});

  @override
  State<MandopHomeDetails> createState() => _MandopHomeDetailsState();
}

class _MandopHomeDetailsState extends State<MandopHomeDetails> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<DataCubitFreezed>()..getData(),
      child: BlocBuilder<DataCubitFreezed, DataState>(
        bloc: getit<DataCubitFreezed>()..getData(),
        builder: (context, state) {
          return state.when(
            start: () {
              return Center(
                child: SizedBox(
                  height: 50.h,
                  width: 50.w,
                  child: LoadingIndicator(
                    indicatorType: Indicator.lineScalePulseOut,
                    colors: [AppColors.navBarIconSelectedColor],
                  ),
                ),
              );
            },
            success: (response) {
              if (response.data!.user!.profileImage.isEmpty) {
                return Center(
                  child: Text(
                    'البيانات غير متوفرة',
                    style: TextStyle(color: Colors.red, fontSize: 16.sp),
                  ),
                );
              }

              return Container(
                width: double.infinity,
                height: 100.h,
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
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 5.h),
                            Text(
                              "${response.data!.user!.fName} ${response.data!.user!.lName}",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "مندوب مبيعات",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                  fontSize: 16.sp, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),
                      ClipOval(
                        child: Image.network(
                          response.data!.user!.profileImage,
                          width: 60.w,
                          height: 60.h,
                          fit: BoxFit.fill,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                color: AppColors.buttonColor,
                                strokeWidth: 1.5,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              "assets/images/placeholder.png",
                              width: 50.w,
                              height: 50.h,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            failed: (errorMessage) {
              return Center(
                child: Text(
                  '',
                  style: TextStyle(color: Colors.red, fontSize: 20.sp),
                ),
              );
            },
            initial: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
