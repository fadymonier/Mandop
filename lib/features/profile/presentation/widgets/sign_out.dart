// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/api/dio_factory.dart';
import 'package:mandoob/core/cache/cache_helper.dart';
import 'package:mandoob/core/cache/cache_keys.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class SignOutWidget extends StatelessWidget {
  const SignOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.r),
      child: GestureDetector(
        onTap: () async {
          bool? confirm = await showDialog<bool>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Center(
                  child: Text(
                    "تسجيل الخروج",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      color: AppColors.blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/alert.png', // Replace with your image asset
                        width: 60.0, // Adjust size as needed
                        height: 60.0,
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false); // User cancels
                    },
                    child: Text(
                      "إلغاء",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      await SharedPrefHelper.clearAllSecuredData();
                      await SharedPrefHelper.removeData(
                          SharedPrefKeys.userToken);

                      DioFactory.removeTokenFromHeader();

                      Navigator.of(context).pop(true); // User confirms
                    },
                    child: Text(
                      "تأكيد",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        color: AppColors.errorColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
          if (confirm == true) {
            Navigator.pushReplacementNamed(context, '/SignIn');
          }
        },
        child: Text(
          "تسجيل الخروج",
          textDirection: TextDirection.rtl,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          maxLines: 1,
          style: GoogleFonts.cairo(
            color: AppColors.logOutColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
