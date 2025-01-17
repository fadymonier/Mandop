import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/Profile');
              },
              child: Image.asset("assets/images/profileNavbarUnselected.png",
                  width: 190.w),
            ),
            GestureDetector(
                onTap: () {},
                child: Image.asset("assets/images/homeNavbarSelected.png",
                    width: 190.w)),
          ],
        ),
        Positioned(
          top: -35.h,
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/History');
              },
              child: Image.asset("assets/images/historyUnselected.png",
                  width: 70.w)),
        ),
      ],
    );
  }
}
