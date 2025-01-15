import 'package:json_annotation/json_annotation.dart';

part 'mandop_home_details_response_model.g.dart';

@JsonSerializable()
class MandopHomeDetailsResponseModel {
  final User user;
  final Branch branch;

  MandopHomeDetailsResponseModel({required this.user, required this.branch});

  factory MandopHomeDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MandopHomeDetailsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MandopHomeDetailsResponseModelToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: 'f_name')
  final String firstName;

  @JsonKey(name: 'l_name')
  final String lastName;

  @JsonKey(name: 'profile_image')
  final String profileImage;

  User({
    required this.firstName,
    required this.lastName,
    required this.profileImage,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Branch {
  final String name;

  Branch({required this.name});

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}
