// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mandop_home_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MandopDataRM _$MandopDataRMFromJson(Map<String, dynamic> json) => MandopDataRM(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: MandopData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MandopDataRMToJson(MandopDataRM instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

MandopData _$MandopDataFromJson(Map<String, dynamic> json) => MandopData(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MandopDataToJson(MandopData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'branch': instance.branch,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      fName: json['fName'] as String,
      lName: json['lName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      profileImage: json['profileImage'] as String,
      identityImage: (json['identityImage'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String,
      isActive: (json['isActive'] as num).toInt(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'fName': instance.fName,
      'lName': instance.lName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'profileImage': instance.profileImage,
      'identityImage': instance.identityImage,
      'createdAt': instance.createdAt,
      'isActive': instance.isActive,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      coverage: (json['coverage'] as num).toInt(),
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'coverage': instance.coverage,
    };
