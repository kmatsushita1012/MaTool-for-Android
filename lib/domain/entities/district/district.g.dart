// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_District _$DistrictFromJson(Map<String, dynamic> json) => _District(
  id: json['id'] as String,
  name: json['name'] as String,
  regionId: json['regionId'] as String,
  description: json['description'] as String?,
  base:
      json['base'] == null
          ? null
          : Coordinate.fromJson(json['base'] as Map<String, dynamic>),
  area:
      (json['area'] as List<dynamic>?)
          ?.map((e) => Coordinate.fromJson(e as Map<String, dynamic>))
          .toList(),
  imagePath: json['imagePath'] as String?,
);

Map<String, dynamic> _$DistrictToJson(_District instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'regionId': instance.regionId,
  'description': instance.description,
  'base': instance.base,
  'area': instance.area,
  'imagePath': instance.imagePath,
};
