import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class ClientsNumberWidget extends StatelessWidget {
  const ClientsNumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(alignment: Alignment.center, children: [
          Image.asset(
            "assets/images/clientsAndOrdersCard.png",
            width: 172.w,
            height: 145.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/clientsImage.png",
                width: 44.w,
                height: 57.h,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      "20",
                      style: GoogleFonts.cairo(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whtieColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "عدد العملاء",
                  style: GoogleFonts.cairo(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whtieColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 25.w,
            ),
          ])
        ])
      ],
    );
  }
}
