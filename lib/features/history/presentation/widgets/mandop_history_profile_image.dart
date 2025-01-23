import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_cubit.dart';
import 'package:mandoob/features/profile/logic/cubit/profile_state.dart';

class MandopHistoryProfileImage extends StatelessWidget {
  const MandopHistoryProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.r),
      child: BlocProvider(
        create: (context) => getit<ProfileCubit>()..getProfileDetailsData(),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          bloc: getit<ProfileCubit>()..getProfileDetailsData(),
          builder: (context, state) {
            return state.when(initial: () {
              return const SizedBox.shrink();
            }, profileLoading: () {
              return const SizedBox.shrink();
            }, profileSuccess: (response) {
              if (response.data!.user!.profileImage.isEmpty) {
                return Center(
                  child: Text(
                    'البيانات غير متوفرة',
                    style: TextStyle(color: Colors.red, fontSize: 16.sp),
                  ),
                );
              }
              return Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120.w,
                        height: 120.h,
                        decoration: BoxDecoration(
                          color: AppColors.profileAvatarBGColor,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                      ),
                      SizedBox(
                        width: 110.w,
                        height: 110.h,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            response.data!.user!.profileImage,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "مندوب مبيعات",
                    style: GoogleFonts.cairo(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.historyTitleColor,
                    ),
                  ),
                  Text(
                    "${response.data!.user!.fName} ${response.data!.user!.lName}",
                    style: GoogleFonts.cairo(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                    ),
                  ),
                  Text(
                    response.data!.user!.phoneNumber,
                    style: GoogleFonts.cairo(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              );
            }, profileError: (error) {
              return Center(
                child: Text(
                  'Failed to load data',
                  style: TextStyle(color: Colors.red, fontSize: 16.sp),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
