import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:mandoob/features/auth/sign_in/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: SizedBox(
                  height: 50.h,
                  width: 50.w,
                  child: LoadingIndicator(
                    indicatorType: Indicator.lineScalePulseOut,
                    colors: [AppColors.navBarIconSelectedColor],
                  ),
                ),
              ),
            );
          },
          success: (loginResponse) {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, "/Home");
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    Navigator.pop(context); // Close any open dialogs
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.error,
          color: AppColors.errorColor,
          size: 32,
        ),
        content: Text(
          error,
          style: GoogleFonts.cairo(
            color: AppColors.primaryFontBlackColor,
            fontSize: 16,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close dialog on 'Got it' click
            },
            child: Text(
              'Got it',
              style: GoogleFonts.cairo(
                color: AppColors.primaryFontBlackColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
