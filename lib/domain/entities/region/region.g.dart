// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Region _$RegionFromJson(Map<String, dynamic> json) => _Region(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  prefecture: json['prefecture'] as String,
  city: json['city'] as String,
  dates:
      (json['dates'] as List<dynamic>)
          .map((e) => SimpleDate.fromJson(e as Map<String, dynamic>))
          .toList(),
  imagePath: json['imagePath'] as String?,
);

Map<String, dynamic> _$RegionToJson(_Region instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'prefecture': instance.prefecture,
  'city': instance.city,
  'dates': instance.dates,
  'imagePath': instance.imagePath,
};
