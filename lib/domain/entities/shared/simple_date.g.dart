// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimpleDate _$SimpleDateFromJson(Map<String, dynamic> json) => _SimpleDate(
  year: (json['year'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  day: (json['day'] as num).toInt(),
);

Map<String, dynamic> _$SimpleDateToJson(_SimpleDate instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };
