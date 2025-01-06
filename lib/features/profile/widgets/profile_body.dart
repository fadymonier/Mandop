import 'package:flutter/material.dart';
import 'package:mandoob/features/navbar/profile_navbar.dart';
import 'package:mandoob/features/profile/widgets/mandop_profile_image.dart';
import 'package:mandoob/features/profile/widgets/mandop_details.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MandopProfileImage(),
          MandopProfileDetailsWidget(),
          Spacer(),
          ProfileNavbar()
        ],
      ),
    );
  }
}
