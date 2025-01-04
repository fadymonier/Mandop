import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class TotalPointsWidget extends StatelessWidget {
  const TotalPointsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image.asset(
        "assets/images/pointsCard.png",
        width: 360.w,
        height: 145.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "100",
              style: GoogleFonts.cairo(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.whtieColor,
              ),
            ),
            Text(
              "إجمالي النقاط",
              style: GoogleFonts.cairo(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.whtieColor,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 25.w,
        ),
        Image.asset(
          "assets/images/pointsImage.png",
          width: 64.w,
          height: 64.h,
        ),
      ])
    ]);
  }
}
