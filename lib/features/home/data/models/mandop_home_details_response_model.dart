import 'package:json_annotation/json_annotation.dart';

part 'mandop_home_details_response_model.g.dart';

@JsonSerializable()
class MandopDataRM {
  @JsonKey(name: 'f_name')
  final String firstName;

  @JsonKey(name: 'l_name')
  final String lastName;

  @JsonKey(name: 'profile_image')
  final String profileImage;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'identity_image')
  final List<String> identityImage;

  MandopDataRM({
    required this.firstName,
    required this.lastName,
    required this.profileImage,
    required this.email,
    required this.phoneNumber,
    required this.identityImage,
  });

  factory MandopDataRM.fromJson(Map<String, dynamic> json) =>
      _$MandopDataRMFromJson(json);

  Map<String, dynamic> toJson() => _$MandopDataRMToJson(this);
}

@JsonSerializable()
class Branch {
  final String name;
  final String latitude;
  final String longitude;
  final int coverage;

  Branch({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.coverage,
  });

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}
