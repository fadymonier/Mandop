// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_by_month_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointsByMonthResponse _$PointsByMonthResponseFromJson(
        Map<String, dynamic> json) =>
    PointsByMonthResponse(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: PointsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PointsByMonthResponseToJson(
        PointsByMonthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

PointsData _$PointsDataFromJson(Map<String, dynamic> json) => PointsData(
      month: json['month'] as String,
      year: (json['year'] as num).toInt(),
      totalPoints: json['total_points'] as String,
      totalOrders: (json['total_orders'] as num).toInt(),
      totalClients: (json['total_clients'] as num).toInt(),
    );

Map<String, dynamic> _$PointsDataToJson(PointsData instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'total_points': instance.totalPoints,
      'total_orders': instance.totalOrders,
      'total_clients': instance.totalClients,
    };
