import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/features/home/presentation/widgets/clients_number.dart';
import 'package:mandoob/features/home/presentation/widgets/mandop_home_details.dart';
import 'package:mandoob/features/home/presentation/widgets/orders_number.dart';
import 'package:mandoob/features/home/presentation/widgets/total_points.dart';
import 'package:mandoob/features/navbar/home_navbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MandopHomeDetails(),
          SizedBox(height: 20.h),
          const TotalPointsWidget(),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ClientsNumberWidget(),
              SizedBox(width: 20.w),
              const OrdersNumberWidget(),
            ],
          ),
          const Spacer(),
          const HomeNavbar(),
        ],
      ),
    );
  }
}
