// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Point _$PointFromJson(Map<String, dynamic> json) => _Point(
  id: json['id'] as String,
  coordinate: Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
  isPassed: json['isPassed'] as bool,
  title: json['title'] as String?,
  description: json['description'] as String?,
  time:
      json['time'] == null
          ? null
          : SimpleTime.fromJson(json['time'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PointToJson(_Point instance) => <String, dynamic>{
  'id': instance.id,
  'coordinate': instance.coordinate,
  'isPassed': instance.isPassed,
  'title': instance.title,
  'description': instance.description,
  'time': instance.time,
};
