import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/core/services/dependency_injection.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_cubit.dart';
import 'package:mandoob/features/home/logic/home_cubit/home_state.dart';
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
      child: Column(
        children: [
          const MandopHomeDetails(),
          // SizedBox(height: 10.h),
          BlocProvider(
            create: (context) => HomeCubit(getit())..getHomeData(),
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        homeLoading: () {
                          return const SizedBox.shrink();
                        },
                        homeSuccess: (response) {
                          final homeData = response.data;
                          if (homeData != null) {
                            return TotalPointsWidget(
                                totalMandopPoints: homeData);
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                        homeError: (_) {
                          return Center(
                            child: Text(
                              'Failed to load data. Please try again.',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 16.sp),
                            ),
                          );
                        },
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClientsNumberWidget(),
                      OrdersNumberWidget(),
                    ],
                  ),
                  const Spacer(),
                  const HomeNavbar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
