import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DateModel extends StatelessWidget {
  final String month;
  final String date;
  final String ponits;

  const DateModel({
    super.key,
    required this.month,
    required this.date,
    required this.ponits,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    month,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.cairo(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff1A1A1A),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Image.asset(
                    "assets/images/historyMonths.png",
                    width: 20.w,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 5.0.r, top: 5.0.r),
                child: Text(
                  date,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff1A1A1A),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5.0.r, top: 5.0.r),
                child: Text(
                  ponits,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff1A1A1A),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
