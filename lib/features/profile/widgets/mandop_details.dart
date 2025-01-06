import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/features/profile/models/mandop_details_model.dart';
import 'package:mandoob/features/profile/widgets/sign_out.dart';

class MandopProfileDetailsWidget extends StatelessWidget {
  const MandopProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MandopDetailsModel(title: "الأسم", subTitle: "أمير إيهاب فايز"),
              MandopDetailsModel(
                  title: ":رقم الهاتف", subTitle: "201010453530+"),
              MandopDetailsModel(
                  title: 'البريد الألكتروني',
                  subTitle: "alaamohamed22@gmail.com"),
              MandopDetailsModel(
                  title: 'المسمى الوظيفي', subTitle: "مندوب مبيعات"),
              MandopDetailsModel(title: 'المنطقه', subTitle: "تمي الامديد"),
              MandopDetailsModel(title: 'المحافظه', subTitle: "الدقهليه"),
              MandopDetailsModel(
                  title: 'العنوان على الخريطة',
                  subTitle:
                      "المنصورة قسم 2، المنصورة 2، محافظة الدقهلية 7661351"),
              const SignOutWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
