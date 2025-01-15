import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/data/models/home_response_model.dart';

class TotalPointsWidget extends StatelessWidget {
  final HomeData totalMandopPoints;

  const TotalPointsWidget({
    super.key,
    required this.totalMandopPoints,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/pointsCard.png",
          width: 360.w,
          height: 145.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  totalMandopPoints.totalPoints.toString(),
                  style: GoogleFonts.cairo(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor,
                  ),
                ),
                Text(
                  "إجمالي النقاط",
                  style: GoogleFonts.cairo(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(width: 25.w),
            Image.asset(
              "assets/images/pointsImage.png",
              width: 64.w,
              height: 64.h,
            ),
          ],
        ),
      ],
    );
  }
}
