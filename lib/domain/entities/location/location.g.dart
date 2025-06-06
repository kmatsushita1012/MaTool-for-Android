// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  districtId: json['districtId'] as String,
  coordinate: Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
  date: SimpleDate.fromJson(json['date'] as Map<String, dynamic>),
  time: SimpleTime.fromJson(json['time'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'districtId': instance.districtId,
  'coordinate': instance.coordinate,
  'date': instance.date,
  'time': instance.time,
};
