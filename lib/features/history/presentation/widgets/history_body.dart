import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/features/history/presentation/widgets/history_row.dart';
import 'package:mandoob/features/history/presentation/widgets/mandop_history_profile_image.dart';
import 'package:mandoob/features/navbar/history_navbar.dart';

class HistoryBody extends StatelessWidget {
  const HistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          // Profile Image
          const MandopHistoryProfileImage(),
          SizedBox(
            height: 20.h,
          ),
          // Placeholder for the history row
          const HistoryRow(),
          SizedBox(
            height: 20.h,
          ),
          // Bottom Navbar
          const Spacer(),
          const HistoryNavbar(),
        ],
      ),
    );
  }
}
