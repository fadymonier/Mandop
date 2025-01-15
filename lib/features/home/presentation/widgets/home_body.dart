import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/core/utils/app_colors.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_cubit.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_state.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_cubit.dart';
import 'package:mandoob/features/home/logic/home_mandop_details_cubit/home_mandop_details_state.dart';
import 'package:mandoob/features/home/presentation/widgets/clients_number.dart';
import 'package:mandoob/features/home/presentation/widgets/mandop_home_details.dart';
import 'package:mandoob/features/home/presentation/widgets/orders_number.dart';
import 'package:mandoob/features/home/presentation/widgets/total_points.dart';
import 'package:mandoob/features/navbar/home_navbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          // BlocProvider for HomeCubit
          BlocProvider(
            create: (context) => HomeCubit(getit())..getHomeData(),
          ),
          // BlocProvider for HomeManopDetailsCubit
          BlocProvider(
            create: (context) =>
                HomeManopDetailsCubit(getit())..getMandopDetailsHomeData(),
          ),
        ],
        child: Column(
          children: [
            // Use BlocBuilder for HomeManopDetailsCubit
            SizedBox(
              height: 100.h,
              child: BlocBuilder<HomeManopDetailsCubit, HomeManopDetailsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    homeMandopDetailsLoading: () {
                      return Center(
                        child: CircularProgressIndicator(
                          color: AppColors.buttonColor,
                        ),
                      );
                    },
                    homeMandopDetailsSuccess: (homeMandopDetailsResponseModel) {
                      final homeMandopDetailsData =
                          homeMandopDetailsResponseModel.user;

                      if (homeMandopDetailsData.firstName.isEmpty ||
                          homeMandopDetailsData.profileImage.isEmpty) {
                        return Center(
                          child: Text(
                            'البيانات غير متوفرة',
                            style:
                                TextStyle(color: Colors.red, fontSize: 16.sp),
                          ),
                        );
                      }

                      return MandopHomeDetails(
                        mandopHomeDetailsResponseModel:
                            homeMandopDetailsResponseModel,
                        mandopHomeDetails: homeMandopDetailsResponseModel,
                      );
                    },
                    homeMandopDetailsError: (errorHandler) {
                      return Center(
                        child: Text(
                          'Failed to load data. Please try again.',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16.sp,
                          ),
                        ),
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),

            // Use BlocBuilder for HomeCubit
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  homeLoading: () {
                    return Center(
                      child: CircularProgressIndicator(
                        color: AppColors.buttonColor,
                      ),
                    );
                  },
                  homeSuccess: (homeResponseModel) {
                    final homeData = homeResponseModel.data;
                    if (homeData != null) {
                      return TotalPointsWidget(
                        totalMandopPoints: homeData,
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                  homeError: (errorHandler) {
                    return Center(
                        child: Text(
                      'Failed to load data. Please try again.',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    ));
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
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
      ),
    );
  }
}
