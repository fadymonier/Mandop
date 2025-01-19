import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/features/history/presentation/models/date_model.dart';
import 'package:mandoob/features/navbar/history_navbar.dart';

class DatesBody extends StatelessWidget {
  const DatesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 650.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0.r),
                  child: const DateModel(
                      month: "شهر سبتمبر", date: "30/9/2024", ponits: "600"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0.r),
                  child: const DateModel(
                      month: "شهر أغسطس", date: "30/8/2024", ponits: "1000"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0.r),
                  child: const DateModel(
                      month: "شهر يوليو", date: "31/7/2024", ponits: "800"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0.r),
                  child: const DateModel(
                      month: "شهر يونيو", date: "30/6/2024", ponits: "3000"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0.r),
                  child: const DateModel(
                      month: "شهر مايو", date: "30/5/2024", ponits: "2000"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0.r),
                  child: const DateModel(
                      month: "شهر ابريل", date: "30/4/2024", ponits: "600"),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        const HistoryNavbar(),
      ],
    );
  }
}
