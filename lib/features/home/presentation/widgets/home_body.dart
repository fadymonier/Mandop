import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/presentation/view/content_details_view.dart';

class ContentListView extends StatelessWidget {
  const ContentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: ListView.builder(
        itemCount: 20, // Unlimited items
        itemBuilder: (context, index) {
          return ContentForMandoob(
            title: 'Title ${index + 1}', // Dynamically generated title
            subTitle: 'SubTitle ${index + 1}', // Dynamically generated subtitle
            image: 'assets/images/loyal.png', // Static image
          );
        },
      ),
    );
  }
}

class ContentForMandoob extends StatelessWidget {
  const ContentForMandoob({
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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ContentDetails(
              title: title,
              subTitle: subTitle,
              image: image,
            ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(subTitle),
          leading: Image.asset(
            image,
            width: 50.w,
            height: 50.h,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100.h,
        width: 120.w,
        child: const Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Score',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
