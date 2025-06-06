// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteSummary _$RouteSummaryFromJson(Map<String, dynamic> json) =>
    _RouteSummary(
      districtId: json['districtId'] as String,
      date: SimpleDate.fromJson(json['date'] as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$RouteSummaryToJson(_RouteSummary instance) =>
    <String, dynamic>{
      'districtId': instance.districtId,
      'date': instance.date,
      'title': instance.title,
    };
