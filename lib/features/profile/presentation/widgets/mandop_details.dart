import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';
import 'package:mandoob/features/profile/presentation/models/mandop_details_model.dart';
import 'package:mandoob/features/profile/presentation/widgets/sign_out.dart';

class MandopProfileDetailsWidget extends StatelessWidget {
  final UserDetailsRM userData;
  final String name;
  final String eMail;
  final String phoneNumber;

  const MandopProfileDetailsWidget(
      {super.key,
      required this.userData,
      required this.name,
      required this.eMail,
      required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510.h,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MandopDetailsModel(
                title: "الأسم",
                subTitle:
                    "${userData.data!.user!.fName} ${userData.data!.user!.lName}"),
            MandopDetailsModel(
                title: "رقم الهاتف",
                subTitle: userData.data!.user!.phoneNumber),
            MandopDetailsModel(
                title: 'البريد الألكتروني',
                subTitle: userData.data!.user!.email),
            MandopDetailsModel(
                title: 'المسمى الوظيفي', subTitle: "مندوب مبيعات"),
            MandopDetailsModel(title: 'المنطقه', subTitle: "تمي الامديد"),
            MandopDetailsModel(title: 'المحافظه', subTitle: "الدقهليه"),
            const SignOutWidget(),
          ],
        ),
      ),
    );
  }
}
