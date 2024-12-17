import 'package:flutter/material.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/utils/app_text_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key, required this.color, required this.text, this.onPressed});
  final Color color;
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyles.poppins500style24
              .copyWith(fontSize: 18, color: AppColors.offWhite),
        ),
      ),
    );
  }
}
