import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
                GoRouter.of(context).go('/Profile');
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
              onTap: () {},
              child: Image.asset("assets/images/historyUnselected.png",
                  width: 70.w)),
        ),
      ],
    );
  }
}
