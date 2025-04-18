import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/navbar/profile_navbar.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_cubit.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_state.dart';
import 'package:mandoob/features/profile/presentation/widgets/mandop_details.dart';
import 'package:mandoob/features/profile/presentation/widgets/mandop_profile_image.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<ProfileCubit, ProfileState>(
              bloc: getit<ProfileCubit>()..getProfileDetailsData(),
              builder: (context, state) {
                return state.when(
                  profileLoading: () => Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: LoadingIndicator(
                        indicatorType: Indicator.lineScalePulseOut,
                        colors: [AppColors.navBarIconSelectedColor],
                      ),
                    ),
                  ),
                  profileSuccess: (response) {
                    if (response.data!.branch!.latitude.isEmpty ||
                        response.data!.branch!.longitude.isEmpty) {
                      return Center(
                        child: Text(
                          'البيانات غير متوفرة',
                          style: GoogleFonts.cairo(
                            color: Colors.red,
                            fontSize: 16.sp,
                          ),
                        ),
                      );
                    }
                    return Column(
                      children: [
                        MandopProfileImage(
                          userData: response,
                          userImage: response.data!.user!.profileImage,
                        ),
                        MandopProfileDetailsWidget(
                          userData: response,
                          name:
                              "${response.data!.user!.fName} ${response.data!.user!.lName}",
                          eMail: response.data!.user!.email,
                          phoneNumber: response.data!.user!.phoneNumber,
                          latitude: response.data!.branch?.latitude ??
                              "31.04008023130097",
                          longitude: response.data!.branch?.longitude ??
                              "31.383754837535662",
                        ),
                      ],
                    );
                  },
                  profileError: (errorHandler) => const SizedBox.shrink(),
                  initial: () => const SizedBox.shrink(),
                );
              },
            ),
            const Spacer(),
            const ProfileNavbar(),
          ],
        ),
      ),
    );
  }
}
