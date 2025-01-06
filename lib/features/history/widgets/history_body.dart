import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mandoob/features/history/models/history_body_model.dart';
import 'package:mandoob/features/history/widgets/mandop_history_profile_image.dart';
import 'package:mandoob/features/navbar/history_navbar.dart';

class HistoryBody extends StatelessWidget {
  const HistoryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MandopHistoryProfileImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const HistoryBodyContainerModel(
                title: 'النقاط',
                variable: '5000',
                subTitle: 'نقطه',
                imagePath: 'assets/images/historyPoints.png',
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go('/Dates');
                },
                child: const HistoryBodyContainerModel(
                  title: 'الشهر',
                  variable: 'أكتوبر',
                  subTitle: '2024/',
                  imagePath: 'assets/images/historyMonths.png',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HistoryBodyContainerModel(
                title: 'عدد الاوردات',
                variable: '50',
                subTitle: 'جنيه',
                imagePath: 'assets/images/historyOrders.png',
              ),
              HistoryBodyContainerModel(
                title: 'عدد العملاء',
                variable: '100',
                subTitle: 'عميل',
                imagePath: 'assets/images/historyClients.png',
              ),
            ],
          ),
          const Spacer(),
          const HistoryNavbar(),
        ],
      ),
    );
  }
}
