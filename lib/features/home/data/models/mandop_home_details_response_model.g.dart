// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mandop_home_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MandopHomeDetailsResponseModel _$MandopHomeDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    MandopHomeDetailsResponseModel(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MandopHomeDetailsResponseModelToJson(
        MandopHomeDetailsResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'branch': instance.branch,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      firstName: json['f_name'] as String,
      lastName: json['l_name'] as String,
      profileImage: json['profile_image'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'f_name': instance.firstName,
      'l_name': instance.lastName,
      'profile_image': instance.profileImage,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      name: json['name'] as String,
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'name': instance.name,
    };
