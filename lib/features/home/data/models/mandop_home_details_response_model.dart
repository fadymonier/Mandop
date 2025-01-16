import 'package:json_annotation/json_annotation.dart';

part 'mandop_home_details_response_model.g.dart';

@JsonSerializable()
class MandopDataRM {
  final int status;
  final String message;
  final MandopData data;

  MandopDataRM({
    required this.status,
    required this.message,
    required this.data,
  });

  factory MandopDataRM.fromJson(Map<String, dynamic> json) =>
      _$MandopDataRMFromJson(json);
  Map<String, dynamic> toJson() => _$MandopDataRMToJson(this);
}

@JsonSerializable()
class MandopData {
  final User user;
  final Branch branch;

  MandopData({
    required this.user,
    required this.branch,
  });

  factory MandopData.fromJson(Map<String, dynamic> json) =>
      _$MandopDataFromJson(json);
  Map<String, dynamic> toJson() => _$MandopDataToJson(this);
}

@JsonSerializable()
class User {
  final int id;
  final String fName;
  final String lName;
  final String email;
  final String phoneNumber;
  final String profileImage;
  final List<String> identityImage;
  final String createdAt;
  final int isActive;

  User({
    required this.id,
    required this.fName,
    required this.lName,
    required this.email,
    required this.phoneNumber,
    required this.profileImage,
    required this.identityImage,
    required this.createdAt,
    required this.isActive,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Branch {
  final int id;
  final String name;
  final String latitude;
  final String longitude;
  final int coverage;

  Branch({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.coverage,
  });

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
  Map<String, dynamic> toJson() => _$BranchToJson(this);
}
