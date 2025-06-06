// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_location_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteLocationResponse _$RouteLocationResponseFromJson(
  Map<String, dynamic> json,
) => _RouteLocationResponse(
  route: Route.fromJson(json['route'] as Map<String, dynamic>),
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RouteLocationResponseToJson(
  _RouteLocationResponse instance,
) => <String, dynamic>{'route': instance.route, 'location': instance.location};
