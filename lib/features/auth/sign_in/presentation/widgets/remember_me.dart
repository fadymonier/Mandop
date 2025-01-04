// ignore_for_file: deprecated_member_use, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class RememberMeCheckbox extends StatefulWidget {
  const RememberMeCheckbox({super.key});

  @override
  _RememberMeCheckboxState createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool _isRememberMeChecked = false;

  void _toggleRememberMe(bool? newValue) {
    setState(() {
      _isRememberMeChecked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "تذكرني",
          style: GoogleFonts.cairo(
            color: AppColors.blackColor,
            fontSize: 14.sp,
          ),
        ),
        Checkbox(
          hoverColor: AppColors.emailAndPasswordFontGreyColor,
          value: _isRememberMeChecked,
          onChanged: _toggleRememberMe,
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.buttonColor;
            }
            return AppColors.whtieColor;
          }),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.buttonColor, width: 1.w),
            borderRadius: BorderRadius.circular(4.r),
          ),
          activeColor: AppColors.buttonColor, // Customize checkbox color
        ),
      ],
    );
  }
}
