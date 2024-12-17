import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/utils/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0.r, left: 8.r, top: 24.r),
      child: TextField(
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: CustomTextStyles.poppins500style18,
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle(),
            border: getBorderStyle()),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: BorderSide(color: AppColors.grey));
}
