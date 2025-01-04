import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class OrdersNumberWidget extends StatelessWidget {
  const OrdersNumberWidget({
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
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              "assets/images/ordersImage.png",
              width: 44.w,
              height: 57.h,
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
                  "عدد الأوردرات",
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
