// ignore_for_file: deprecated_member_use, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/functions/navigation.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/widgets/custom_btn.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/auth_text_field.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/remember_me.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/welcome_text_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.r),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 200.h,
                ),
              ),
              const SliverToBoxAdapter(
                child: WelcomeTextWidget(text: "تسجيل الدخول"),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 80.h,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(right: 8.0.r),
                  child: Text(
                    textAlign: TextAlign.right,
                    "البريد الالكتروني  ",
                    style: GoogleFonts.cairo(
                      color: AppColors.emailAndPasswordFontGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomTextField(
                  labelText: "البريد الالكتروني",
                  obscureText: false,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 16.h),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(right: 8.0.r),
                  child: Text(
                    textAlign: TextAlign.right,
                    "كلمة المرور",
                    style: GoogleFonts.cairo(
                      color: AppColors.emailAndPasswordFontGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomTextField(
                  showSuffixIcon: true,
                  labelText: "كلمة المرور",
                  obscureText: true,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                    height: 16.h), // Add space between password and checkbox
              ),
              const SliverToBoxAdapter(
                child: RememberMeCheckbox(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30.h,
                ),
              ),
              SliverToBoxAdapter(
                  child: CustomBtn(
                      onPressed: () {
                        customNavigate(context, "/Home");
                      },
                      color: AppColors.buttonColor,
                      text: "تسجيل الدخول")),
            ],
          ),
        ));
  }
}
