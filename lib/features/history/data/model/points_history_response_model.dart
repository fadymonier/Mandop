import 'package:json_annotation/json_annotation.dart';

part 'points_history_response_model.g.dart';

@JsonSerializable()
class PointsHistoryResponse {
  final int status;
  final String message;
  final PointsHistoryData data;

  PointsHistoryResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory PointsHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$PointsHistoryResponseFromJson(json);
}

@JsonSerializable()
class PointsHistoryData {
  final Map<String, Map<String, PointsHistory>> points;

  PointsHistoryData({required this.points});

  factory PointsHistoryData.fromJson(Map<String, dynamic> json) {
    final points = json.map((year, monthData) {
      final monthMap =
          (monthData as Map<String, dynamic>).map((month, historyData) {
        return MapEntry(month, PointsHistory.fromJson(historyData));
      });
      return MapEntry(year, monthMap);
    });
    return PointsHistoryData(points: points);
  }
}

@JsonSerializable()
class PointsHistory {
  @JsonKey(name: 'total_points')
  final String totalPoints;
  final String month;
  final int year;
  @JsonKey(name: 'last_created_at')
  final String lastCreatedAt;

  PointsHistory({
    required this.totalPoints,
    required this.month,
    required this.year,
    required this.lastCreatedAt,
  });

  factory PointsHistory.fromJson(Map<String, dynamic> json) =>
      _$PointsHistoryFromJson(json);
}
