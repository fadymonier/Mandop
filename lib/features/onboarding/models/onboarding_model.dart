import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 170.h),
        Image.asset(
          imagePath,
          width: 287.w,
          height: 277.h,
        ),
        SizedBox(height: 60.h),
        Text(
          title,
          style:
              GoogleFonts.cairo(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0.h),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style:
                GoogleFonts.cairo(fontSize: 14.sp, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 200.h),
      ],
    );
  }
}
