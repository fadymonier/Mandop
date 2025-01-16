// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    int? status,
    String? message,
    Data? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? token,
    UserDetails? user,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    User? user,
    Branch? branch,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    @JsonKey(name: 'f_name') String? fName,
    @JsonKey(name: 'l_name') String? lName,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'profile_image') String? profileImage,
    List<String>? identityImage,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'is_active') int? isActive,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    int? id,
    String? name,
    String? latitude,
    String? longitude,
    int? coverage,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
