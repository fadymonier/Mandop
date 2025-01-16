// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mandop_home_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailsRM _$UserDetailsRMFromJson(Map<String, dynamic> json) =>
    UserDetailsRM(
      id: (json['id'] as num).toInt(),
      fName: json['f_name'] as String,
      lName: json['l_name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      profileImage: json['profile_image'] as String,
      identityImage: (json['identity_image'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: json['created_at'] as String,
      isActive: (json['isActive'] as num).toInt(),
    );

Map<String, dynamic> _$UserDetailsRMToJson(UserDetailsRM instance) =>
    <String, dynamic>{
      'id': instance.id,
      'f_name': instance.fName,
      'l_name': instance.lName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'profile_image': instance.profileImage,
      'identity_image': instance.identityImage,
      'created_at': instance.createdAt,
      'isActive': instance.isActive,
    };
