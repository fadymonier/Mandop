import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/functions/navigation.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/utils/app_strings.dart';
import 'package:mandoob/core/widgets/custom_btn.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/auth_text_field.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/welcome_text_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: WelcomeTextWidget(text: AppStrings.welcome),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80.h,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextField(
              labelText: AppStrings.emailAddress,
              obscureText: false,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextField(
              showSuffixIcon: true,
              labelText: AppStrings.password,
              obscureText: true,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.h,
            ),
          ),
          SliverToBoxAdapter(
              child: CustomBtn(
                  onPressed: () {
                    customNavigate(context, "/Home");
                  },
                  color: AppColors.buttonColor,
                  text: AppStrings.signIn)),
        ],
      ),
    ));
  }
}
