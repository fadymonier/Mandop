// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class MandopDetailsModel extends StatelessWidget {
  String title;
  String subTitle;

  MandopDetailsModel({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0.r),
      child: Container(
        width: double.infinity,
        height: 90.h,
        color: AppColors.whiteColor,
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: GoogleFonts.cairo(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                subTitle,
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: GoogleFonts.cairo(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
