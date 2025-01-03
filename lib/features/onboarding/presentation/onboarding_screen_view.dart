// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/functions/navigation.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/onboarding/models/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onNextButtonPressed() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Replace current screen with SignInView using GoRouter
      customReplacementNavigate(context, "/SignIn");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/onboardingBody.png", fit: BoxFit.cover),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: const [
                  OnboardingPage(
                    title: "مرحبًا بك",
                    description:
                        "تابع أدائك، واكسب نقاطًا، وزد من\nنجاحك في منطقتك ",
                    imagePath: 'assets/images/onboarding1.png',
                  ),
                  OnboardingPage(
                    title: "نقاطك في مكان واحد",
                    description:
                        "عرف عدد نقاطك، العملاء الذين\nتعاملت معهم، وعدد الأوردرات التي\nقمت بها",
                    imagePath: 'assets/images/onboarding2.png',
                  ),
                  OnboardingPage(
                    title: "بياناتك بين يديك",
                    description: "كل التفاصيل في شاشة واحدة سهلة\nالاستخدام",
                    imagePath: 'assets/images/onboarding3.png',
                  ),
                ],
              ),
              Positioned(
                top: 20,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    _pageController.jumpToPage(2);
                  },
                  child: Image.asset(
                    "assets/images/skip.png",
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              Positioned(
                top: 634.h,
                bottom: 70.h,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    // Indicators
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          width: 20.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: _currentPage == index
                                ? AppColors.buttonColor
                                : AppColors.buttonColorWithOpacity,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    GestureDetector(
                      onTap: _onNextButtonPressed,
                      child: Image.asset(
                        _currentPage == 0
                            ? "assets/images/nextbtn1.png"
                            : _currentPage == 1
                                ? "assets/images/nextbtn2.png"
                                : "assets/images/nextbtn3.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
