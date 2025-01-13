// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final bool showSuffixIcon;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.obscureText,
    required this.controller,
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
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelStyle: GoogleFonts.cairo(
            color: AppColors.emailAndPasswordFontGreyColor,
            fontSize: 16.sp,
          ),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
          border: getBorderStyle(),
          suffixIcon: widget.showSuffixIcon
              ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.visibility_outlined
                        : Icons.visibility_off,
                    color: AppColors.emailAndPasswordFontGreyColor,
                  ),
                  onPressed: _togglePasswordVisibility,
                )
              : null,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Text(
              'هذا الحقل مطلوب',
              style: GoogleFonts.cairo(
                color: AppColors.emailAndPasswordFontGreyColor,
                fontSize: 14.sp,
              ),
            ).data; // Use .data to pass the styled string to the validator
          }
          return null;
        },
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: BorderSide(color: AppColors.whtieColor),
  );
}
