// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mandop_home_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MandopDataRM _$MandopDataRMFromJson(Map<String, dynamic> json) => MandopDataRM(
      firstName: json['f_name'] as String,
      lastName: json['l_name'] as String,
      profileImage: json['profile_image'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      identityImage: (json['identity_image'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MandopDataRMToJson(MandopDataRM instance) =>
    <String, dynamic>{
      'f_name': instance.firstName,
      'l_name': instance.lastName,
      'profile_image': instance.profileImage,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'identity_image': instance.identityImage,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      name: json['name'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      coverage: (json['coverage'] as num).toInt(),
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'coverage': instance.coverage,
    };
