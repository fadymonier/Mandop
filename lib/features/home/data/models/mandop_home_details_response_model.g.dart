// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mandop_home_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailsRM _$UserDetailsRMFromJson(Map<String, dynamic> json) =>
    UserDetailsRM(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      branch: json['branch'] == null
          ? null
          : Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      coverage: (json['coverage'] as num).toInt(),
    );

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      fName: json['f_name'] as String,
      lName: json['l_name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      profileImage: json['profile_image'] as String,
      identityImage: (json['identity_image'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      isActive: (json['is_active'] as num).toInt(),
    );
