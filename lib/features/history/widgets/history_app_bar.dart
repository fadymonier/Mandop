import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandoob/core/utils/app_colors.dart';

class HistoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String navigatePath;

  const HistoryAppBar({
    super.key,
    required this.title,
    required this.navigatePath,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      actions: [
        GestureDetector(
            onTap: () {
              GoRouter.of(context).go(navigatePath);
            },
            child: Image.asset("assets/images/backBTN.png", width: 9.w)),
        SizedBox(width: 20.w),
      ],
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.cairo(
          color: AppColors.blackColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
