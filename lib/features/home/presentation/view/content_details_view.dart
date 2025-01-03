import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class ContentDetails extends StatelessWidget {
  const ContentDetails({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.buttonColor,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 120.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(title),
            Text(subTitle),
          ],
        ),
      ),
    );
  }
}
