// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoob/features/home/data/models/mandop_home_details_response_model.dart';
import 'package:mandoob/features/profile/presentation/models/mandop_details_model.dart';
import 'package:mandoob/features/profile/presentation/widgets/sign_out.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class MandopProfileDetailsWidget extends StatefulWidget {
  final UserDetailsRM? userData;
  final String name;
  final String eMail;
  final String phoneNumber;
  final String latitude;
  final String longitude;

  const MandopProfileDetailsWidget(
      {super.key,
      required this.userData,
      required this.name,
      required this.eMail,
      required this.phoneNumber,
      required this.latitude,
      required this.longitude});

  @override
  _MandopProfileDetailsWidgetState createState() =>
      _MandopProfileDetailsWidgetState();
}

class _MandopProfileDetailsWidgetState
    extends State<MandopProfileDetailsWidget> {
  String region = 'غير متوفر';
  String city = 'غير متوفر';

  @override
  void initState() {
    super.initState();
    _getLocationData();
  }

  Future<void> _getLocationData() async {
    try {
      double lat = double.tryParse(widget.latitude) ?? 0.0;
      double lng = double.tryParse(widget.longitude) ?? 0.0;

      if (lat == 0.0 || lng == 0.0) {
        Position position = await _determinePosition();
        lat = position.latitude;
        lng = position.longitude;
      }

      print('Latitude: $lat, Longitude: $lng');

      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;

        setState(() {
          region = (place.subLocality != null && place.subLocality!.isNotEmpty)
              ? place.subLocality!
              : 'غير متوفر';

          city = (place.locality != null && place.locality!.isNotEmpty)
              ? place.locality!
              : 'غير متوفر';

          print("Region: $region, City: $city"); // Debugging print
        });
      } else {
        setState(() {
          region = 'غير متوفر';
          city = 'غير متوفر';
        });
      }
    } catch (e) {
      print("Error in geocoding: $e");
      setState(() {
        region = 'غير متوفر';
        city = 'غير متوفر';
      });
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print("خدمة الموقع غير مفعلة");
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print("تم رفض إذن الوصول للموقع");
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print("إذن الوصول للموقع مرفوض نهائيًا، لا يمكن استخدامه");
      return Future.error('Location permissions are permanently denied');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510.h,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (widget.userData != null) ...[
              MandopDetailsModel(
                  title: "الأسم",
                  subTitle:
                      "${widget.userData!.data!.user!.fName} ${widget.userData!.data!.user!.lName}"),
              MandopDetailsModel(
                  title: "رقم الهاتف",
                  subTitle: widget.userData!.data!.user!.phoneNumber),
              MandopDetailsModel(
                  title: 'البريد الألكتروني',
                  subTitle: widget.userData!.data!.user!.email),
              MandopDetailsModel(
                  title: 'المسمى الوظيفي', subTitle: "مندوب مبيعات"),
              MandopDetailsModel(title: 'المنطقه', subTitle: region),
              MandopDetailsModel(title: 'المحافظه', subTitle: city),
            ],
            const SignOutWidget(),
          ],
        ),
      ),
    );
  }
}
