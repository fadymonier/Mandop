import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/core/widgets/custom_btn.dart';
import 'package:mandoob/features/auth/sign_in/data/models/login_request_body.dart';
import 'package:mandoob/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/auth_text_field.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/login_bloc_listener.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/remember_me.dart';
import 'package:mandoob/features/auth/sign_in/presentation/widgets/welcome_text_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onSignInPressed() {
    if (_formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
            email: _emailController.text,
            password: _passwordController.text,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.r),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 200.h),
                const WelcomeTextWidget(text: "تسجيل الدخول"),
                SizedBox(height: 80.h),
                Padding(
                  padding: EdgeInsets.only(right: 8.0.r),
                  child: Text(
                    "البريد الالكتروني  ",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.cairo(
                      color: AppColors.emailAndPasswordFontGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                CustomTextField(
                  labelText: "البريد الالكتروني",
                  obscureText: false,
                  controller: _emailController,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 8.0.r),
                  child: Text(
                    "كلمة المرور",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.cairo(
                      color: AppColors.emailAndPasswordFontGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                CustomTextField(
                  showSuffixIcon: true,
                  labelText: "كلمة المرور",
                  obscureText: true,
                  controller: _passwordController,
                ),
                SizedBox(height: 16.h),
                const RememberMeCheckbox(),
                SizedBox(height: 30.h),
                CustomBtn(
                  onPressed: () => _onSignInPressed(),
                  color: AppColors.buttonColor,
                  text: "تسجيل الدخول",
                ),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
