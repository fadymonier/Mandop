// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/utils/app_text_styles.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final bool showSuffixIcon;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.obscureText,
    this.showSuffixIcon = false,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0.r, left: 8.r, top: 24.r),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: CustomTextStyles.poppins500style18,
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
          border: getBorderStyle(),
          suffixIcon: widget.showSuffixIcon
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.buttonColor,
                  ),
                  onPressed: _togglePasswordVisibility,
                )
              : null,
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: BorderSide(color: AppColors.emailAndPasswordFontGreyColor),
  );
}
