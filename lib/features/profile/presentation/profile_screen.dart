import 'package:flutter/material.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/profile/widgets/profile_app_bar.dart';
import 'package:mandoob/features/profile/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: const ProfileAppBar(),
      body: const ProfileBody(),
    );
  }
}
