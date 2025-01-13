import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
                child: CircularProgressIndicator(
                  color: AppColors.buttonColor,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop(); // Pop the loading dialog
            GoRouter.of(context).go("/Home"); // Navigate to home screen
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
    context.pop(); // Close any open dialogs
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
              context.pop(); // Close dialog on 'Got it' click
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
