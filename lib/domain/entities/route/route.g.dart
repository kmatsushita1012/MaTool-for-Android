// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
  districtId: json['districtId'] as String,
  date: SimpleDate.fromJson(json['date'] as Map<String, dynamic>),
  title: json['title'] as String,
  points:
      (json['points'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
  segments:
      (json['segments'] as List<dynamic>)
          .map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
  start: SimpleTime.fromJson(json['start'] as Map<String, dynamic>),
  goal: SimpleTime.fromJson(json['goal'] as Map<String, dynamic>),
  description: json['description'] as String?,
);

Map<String, dynamic> _$RouteToJson(_Route instance) => <String, dynamic>{
  'districtId': instance.districtId,
  'date': instance.date,
  'title': instance.title,
  'points': instance.points,
  'segments': instance.segments,
  'start': instance.start,
  'goal': instance.goal,
  'description': instance.description,
};
