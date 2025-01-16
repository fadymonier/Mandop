import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/navbar/profile_navbar.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_cubit.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_state.dart';
import 'package:mandoob/features/profile/presentation/widgets/mandop_profile_image.dart';
import 'package:mandoob/features/profile/presentation/widgets/mandop_details.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<ProfileCubit, ProfileState>(
            buildWhen: (previous, current) =>
                current is ProfileLoading ||
                current is ProfileSuccess ||
                current is ProfileError,
            builder: (context, state) {
              return state.maybeWhen(
                profileLoading: () => CircularProgressIndicator(
                  color: AppColors.buttonColor,
                ),
                profileSuccess: (userDetailsRM) {
                  var userData = userDetailsRM;
                  return Expanded(
                    child: Column(children: [
                      MandopProfileImage(
                        userData: userData,
                        userImage: userData.profileImage,
                      ),
                      MandopProfileDetailsWidget(
                        userData: userData,
                        name: "${userData.fName} ${userData.lName}",
                        eMail: userData.email,
                        phoneNumber: userData.phoneNumber,
                      ),
                    ]),
                  );
                },
                profileError: (errorHandler) => const SizedBox.shrink(),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          const Spacer(),
          const ProfileNavbar(),
        ],
      ),
    );
  }
}
