// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimpleTime _$SimpleTimeFromJson(Map<String, dynamic> json) => _SimpleTime(
  hour: (json['hour'] as num).toInt(),
  minute: (json['minute'] as num).toInt(),
);

Map<String, dynamic> _$SimpleTimeToJson(_SimpleTime instance) =>
    <String, dynamic>{'hour': instance.hour, 'minute': instance.minute};
