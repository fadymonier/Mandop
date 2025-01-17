import 'package:json_annotation/json_annotation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'points_history_response_model.g.dart';

@JsonSerializable()
class PointsHistoryResponse {
  final int status;
  final String message;
  final Map<String, Map<String, YearData>> data;

  PointsHistoryResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory PointsHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$PointsHistoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PointsHistoryResponseToJson(this);
}

@JsonSerializable()
class YearData {
  final String totalPoints;
  final String month;
  final String year;
  final String lastCreatedAt;

  YearData({
    required this.totalPoints,
    required this.month,
    required this.year,
    required this.lastCreatedAt,
  });

  factory YearData.fromJson(Map<String, dynamic> json) =>
      _$YearDataFromJson(json);
  Map<String, dynamic> toJson() => _$YearDataToJson(this);
}
