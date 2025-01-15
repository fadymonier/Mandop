import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';

class MandopHomeDetails extends StatelessWidget {
  final MandopHomeDetailsResponseModel mandopHomeDetailsResponseModel;

  const MandopHomeDetails({
    super.key,
    required this.mandopHomeDetailsResponseModel,
    required MandopHomeDetailsResponseModel mandopHomeDetails,
  });

  @override
  Widget build(BuildContext context) {
    final mandopData = mandopHomeDetailsResponseModel.user;

    if (mandopData.firstName.isEmpty || mandopData.profileImage.isEmpty) {
      return Center(
        child: Text(
          'البيانات غير متوفرة',
          style: TextStyle(color: Colors.red, fontSize: 16.sp),
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: 120.h,
      color: AppColors.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(18.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/notify.png",
                    width: 50.w, height: 50.h),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          mandopData.firstName,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          mandopData.lastName,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "مندوب مبيعات",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(width: 20.w),
                Image.network(
                  mandopData.profileImage,
                  width: 50.w,
                  height: 50.h,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                          child: CircularProgressIndicator(
                        color: AppColors.buttonColor,
                      ));
                    }
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, color: Colors.red, size: 50.h);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
