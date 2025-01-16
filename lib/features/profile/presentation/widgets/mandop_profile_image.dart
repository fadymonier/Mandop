import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';

class MandopProfileImage extends StatelessWidget {
  final UserDetailsRM userData;
  final String userImage;
  const MandopProfileImage({
    super.key,
    required this.userData,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.r),
      child: Stack(
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
                userData.profileImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
