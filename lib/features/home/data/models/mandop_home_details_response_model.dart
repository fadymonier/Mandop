import 'package:json_annotation/json_annotation.dart';

part 'mandop_home_details_response_model.g.dart';

@JsonSerializable()
class UserDetailsRM {
  final int id;

  @JsonKey(name: 'f_name')
  final String fName;

  @JsonKey(name: 'l_name')
  final String lName;

  final String email;
  final String phoneNumber;

  @JsonKey(name: 'profile_image')
  final String profileImage;

  @JsonKey(name: 'identity_image')
  final List<String> identityImage;

  @JsonKey(name: 'created_at')
  final String createdAt;

  final int isActive;

  UserDetailsRM({
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

  factory UserDetailsRM.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsRMFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailsRMToJson(this);
}
