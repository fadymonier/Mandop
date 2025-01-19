// import 'package:flutter/material.dart';

// class GetButtons extends StatelessWidget {
//   const GetButtons(
//       { required this.currentIndex, required this.controller});
//   final int currentIndex;
//   final PageController controller;
//   @override
//   Widget build(BuildContext context) {
//     if (currentIndex == onBoardingData.length - 1) {
//       return Column(
//         children: [
//           CustomBtn(
//             text: AppStrings.createAccount,
//             onPressed: () {
//               onBoardingVisited();
//               customReplacementNavigate(context, "/signUp");
//             },
//             color: AppColors.primaryColor,
//           ),
//           const SizedBox(height: 16),
//           GestureDetector(
//             onTap: () {
//               onBoardingVisited();

//               customReplacementNavigate(context, "/signIn");
//             },
//             child: Text(
//               AppStrings.loginNow,
//               style: CustomTextStyles.poppins300style16.copyWith(
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ],
//       );
//     } else {
//       return CustomBtn(
//         color: AppColors.primaryColor,
//         text: AppStrings.next,
//         onPressed: () {
//           controller.nextPage(
//             duration: const Duration(microseconds: 200),
//             curve: Curves.bounceIn,
//           );
//         },
//       );
//     }
//   }
// }
