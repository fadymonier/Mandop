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
      data: (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, YearData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$PointsHistoryResponseToJson(
        PointsHistoryResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

YearData _$YearDataFromJson(Map<String, dynamic> json) => YearData(
      totalPoints: json['totalPoints'] as String,
      month: json['month'] as String,
      year: json['year'] as String,
      lastCreatedAt: json['lastCreatedAt'] as String,
    );

Map<String, dynamic> _$YearDataToJson(YearData instance) => <String, dynamic>{
      'totalPoints': instance.totalPoints,
      'month': instance.month,
      'year': instance.year,
      'lastCreatedAt': instance.lastCreatedAt,
    };
