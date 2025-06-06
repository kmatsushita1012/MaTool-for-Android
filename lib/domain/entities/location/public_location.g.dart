// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublicLocation _$PublicLocationFromJson(Map<String, dynamic> json) =>
    _PublicLocation(
      districtId: json['districtId'] as String,
      coordinate: Coordinate.fromJson(
        json['coordinate'] as Map<String, dynamic>,
      ),
      date: SimpleDate.fromJson(json['date'] as Map<String, dynamic>),
      time: SimpleTime.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PublicLocationToJson(_PublicLocation instance) =>
    <String, dynamic>{
      'districtId': instance.districtId,
      'coordinate': instance.coordinate,
      'date': instance.date,
      'time': instance.time,
    };
