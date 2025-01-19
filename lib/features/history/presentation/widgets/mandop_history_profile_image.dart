import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class MandopHistoryProfileImage extends StatelessWidget {
  const MandopHistoryProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.r),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 120.w,
                height: 120.h,
                decoration: BoxDecoration(
                  color: AppColors.profileAvatarBGColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
              SizedBox(
                width: 110.w,
                height: 110.h,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/profileImage.png",
                  ),
                ),
              ),
            ],
          ),
          Text(
            "مدير مبيعات",
            style: GoogleFonts.cairo(
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
              color: AppColors.historyTitleColor,
            ),
          ),
          Text(
            "أمير إيهاب فايز",
            style: GoogleFonts.cairo(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.blackColor,
            ),
          ),
          Text(
            "+201011245367",
            style: GoogleFonts.cairo(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
