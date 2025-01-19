// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointsHistoryResponse _$PointsHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    PointsHistoryResponse(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: PointsHistoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PointsHistoryResponseToJson(
        PointsHistoryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

PointsHistoryData _$PointsHistoryDataFromJson(Map<String, dynamic> json) =>
    PointsHistoryData(
      points: (json['points'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(
                  k, PointsHistory.fromJson(e as Map<String, dynamic>)),
            )),
      ),
    );

Map<String, dynamic> _$PointsHistoryDataToJson(PointsHistoryData instance) =>
    <String, dynamic>{
      'points': instance.points,
    };

PointsHistory _$PointsHistoryFromJson(Map<String, dynamic> json) =>
    PointsHistory(
      totalPoints: json['total_points'] as String,
      month: json['month'] as String,
      year: (json['year'] as num).toInt(),
      lastCreatedAt: json['last_created_at'] as String,
    );

Map<String, dynamic> _$PointsHistoryToJson(PointsHistory instance) =>
    <String, dynamic>{
      'total_points': instance.totalPoints,
      'month': instance.month,
      'year': instance.year,
      'last_created_at': instance.lastCreatedAt,
    };
