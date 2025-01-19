import 'package:json_annotation/json_annotation.dart';

part 'mandop_home_details_response_model.g.dart';

@JsonSerializable(createToJson: false)
class UserDetailsRM {
  UserDetailsRM({
    required this.status,
    required this.message,
    required this.data,
  });

  final int status;
  final String message;
  final Data? data;

  factory UserDetailsRM.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsRMFromJson(json);
}

@JsonSerializable(createToJson: false)
class Data {
  Data({
    required this.user,
    required this.branch,
  });

  final User? user;
  final Branch? branch;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable(createToJson: false)
class Branch {
  Branch({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.coverage,
  });

  final int id;
  final String name;
  final String latitude;
  final String longitude;
  final int coverage;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}

@JsonSerializable(createToJson: false)
class User {
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

  final int id;

  @JsonKey(name: 'f_name')
  final String fName;

  @JsonKey(name: 'l_name')
  final String lName;
  final String email;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'profile_image')
  final String profileImage;

  @JsonKey(name: 'identity_image')
  final List<String>? identityImage;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @JsonKey(name: 'is_active')
  final int isActive;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// @JsonSerializable()
// class UserDetailsRM {
//   final int id;
//
//   @JsonKey(name: 'f_name')
//   final String fName;
//
//   @JsonKey(name: 'l_name')
//   final String lName;
//
//   final String email;
//   final String phoneNumber;
//
//   @JsonKey(name: 'profile_image')
//   final String profileImage;
//
//   @JsonKey(name: 'identity_image')
//   final List<String> identityImage;
//
//   @JsonKey(name: 'created_at')
//   final String createdAt;
//
//   final int isActive;
//
//   UserDetailsRM({
//     required this.id,
//     required this.fName,
//     required this.lName,
//     required this.email,
//     required this.phoneNumber,
//     required this.profileImage,
//     required this.identityImage,
//     required this.createdAt,
//     required this.isActive,
//   });
//
//   factory UserDetailsRM.fromJson(Map<String, dynamic> json) =>
//       _$UserDetailsRMFromJson(json);
//   Map<String, dynamic> toJson() => _$UserDetailsRMToJson(this);
// }
