import 'package:json_annotation/json_annotation.dart';

part 'points_by_month_response.g.dart';

@JsonSerializable()
class PointsByMonthResponse {
  final int status;
  final String message;
  final PointsData data;

  PointsByMonthResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory PointsByMonthResponse.fromJson(Map<String, dynamic> json) =>
      _$PointsByMonthResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PointsByMonthResponseToJson(this);
}

@JsonSerializable()
class PointsData {
  final String month;
  final int year;
  @JsonKey(name: 'total_points')
  final String totalPoints;
  @JsonKey(name: 'total_orders')
  final int totalOrders;
  @JsonKey(name: 'total_clients')
  final int totalClients;

  PointsData({
    required this.month,
    required this.year,
    required this.totalPoints,
    required this.totalOrders,
    required this.totalClients,
  });

  factory PointsData.fromJson(Map<String, dynamic> json) =>
      _$PointsDataFromJson(json);
  Map<String, dynamic> toJson() => _$PointsDataToJson(this);
}
