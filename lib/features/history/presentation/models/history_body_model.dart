import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class HistoryBodyContainerModel extends StatelessWidget {
  final String title;
  final String variable;
  final String subTitle;
  final String imagePath;
  const HistoryBodyContainerModel(
      {super.key,
      required this.title,
      required this.variable,
      required this.subTitle,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.w,
      height: 166.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 32.w,
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            title,
            style: GoogleFonts.cairo(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.blackColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                subTitle,
                style: GoogleFonts.cairo(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor),
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                variable,
                style: GoogleFonts.cairo(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
