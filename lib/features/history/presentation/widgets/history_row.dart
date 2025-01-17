import 'package:flutter/material.dart';
import 'package:mandoob/features/history/data/model/points_history_response_model.dart';
import 'package:mandoob/features/history/presentation/models/history_body_model.dart';

class HistoryRow extends StatelessWidget {
  final YearData historyData;
  const HistoryRow({super.key, required this.historyData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HistoryBodyContainerModel(
          title: 'النقاط',
          variable: historyData.totalPoints,
          subTitle: 'نقطه',
          imagePath: 'assets/images/historyPoints.png',
        ),
        GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, '/Dates');
          },
          child: HistoryBodyContainerModel(
            title: 'الشهر',
            variable: historyData.month,
            subTitle: historyData.year,
            imagePath: 'assets/images/historyMonths.png',
          ),
        ),
      ],
    );
  }
}

 // const Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     HistoryBodyContainerModel(
          //       title: 'عدد الاوردات',
          //       variable: '50',
          //       subTitle: 'جنيه',
          //       imagePath: 'assets/images/historyOrders.png',
          //     ),
          //     HistoryBodyContainerModel(
          //       title: 'عدد العملاء',
          //       variable: '100',
          //       subTitle: 'عميل',
          //       imagePath: 'assets/images/historyClients.png',
          //     ),
          //   ],
          // ),