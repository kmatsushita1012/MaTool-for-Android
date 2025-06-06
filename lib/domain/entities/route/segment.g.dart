// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Segment _$SegmentFromJson(Map<String, dynamic> json) => _Segment(
  id: json['id'] as String,
  start: Coordinate.fromJson(json['start'] as Map<String, dynamic>),
  end: Coordinate.fromJson(json['end'] as Map<String, dynamic>),
  coordinates:
      (json['coordinates'] as List<dynamic>)
          .map((e) => Coordinate.fromJson(e as Map<String, dynamic>))
          .toList(),
  isPassed: json['isPassed'] as bool,
);

Map<String, dynamic> _$SegmentToJson(_Segment instance) => <String, dynamic>{
  'id': instance.id,
  'start': instance.start,
  'end': instance.end,
  'coordinates': instance.coordinates,
  'isPassed': instance.isPassed,
};
