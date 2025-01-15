import 'package:json_annotation/json_annotation.dart';

part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel {
  final int status;
  final String message;
  final HomeData? data;

  HomeResponseModel({
    required this.status,
    required this.message,
    this.data,
  });

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseModelToJson(this);
}

@JsonSerializable()
class HomeData {
  @JsonKey(name: 'total_points')
  final int totalPoints;

  @JsonKey(name: 'orders_number')
  final int ordersNumber;

  @JsonKey(name: 'customers_counts')
  final int customersCounts;

  HomeData({
    required this.totalPoints,
    required this.ordersNumber,
    required this.customersCounts,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}
