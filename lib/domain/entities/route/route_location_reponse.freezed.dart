// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_location_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteLocationResponse {

 Route get route; Location get location;
/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteLocationResponseCopyWith<RouteLocationResponse> get copyWith => _$RouteLocationResponseCopyWithImpl<RouteLocationResponse>(this as RouteLocationResponse, _$identity);

  /// Serializes this RouteLocationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteLocationResponse&&(identical(other.route, route) || other.route == route)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,route,location);

@override
String toString() {
  return 'RouteLocationResponse(route: $route, location: $location)';
}


}

/// @nodoc
abstract mixin class $RouteLocationResponseCopyWith<$Res>  {
  factory $RouteLocationResponseCopyWith(RouteLocationResponse value, $Res Function(RouteLocationResponse) _then) = _$RouteLocationResponseCopyWithImpl;
@useResult
$Res call({
 Route route, Location location
});


$RouteCopyWith<$Res> get route;$LocationCopyWith<$Res> get location;

}
/// @nodoc
class _$RouteLocationResponseCopyWithImpl<$Res>
    implements $RouteLocationResponseCopyWith<$Res> {
  _$RouteLocationResponseCopyWithImpl(this._self, this._then);

  final RouteLocationResponse _self;
  final $Res Function(RouteLocationResponse) _then;

/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? route = null,Object? location = null,}) {
  return _then(_self.copyWith(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as Route,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location,
  ));
}
/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteCopyWith<$Res> get route {
  
  return $RouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get location {
  
  return $LocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RouteLocationResponse implements RouteLocationResponse {
  const _RouteLocationResponse({required this.route, required this.location});
  factory _RouteLocationResponse.fromJson(Map<String, dynamic> json) => _$RouteLocationResponseFromJson(json);

@override final  Route route;
@override final  Location location;

/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteLocationResponseCopyWith<_RouteLocationResponse> get copyWith => __$RouteLocationResponseCopyWithImpl<_RouteLocationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteLocationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteLocationResponse&&(identical(other.route, route) || other.route == route)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,route,location);

@override
String toString() {
  return 'RouteLocationResponse(route: $route, location: $location)';
}


}

/// @nodoc
abstract mixin class _$RouteLocationResponseCopyWith<$Res> implements $RouteLocationResponseCopyWith<$Res> {
  factory _$RouteLocationResponseCopyWith(_RouteLocationResponse value, $Res Function(_RouteLocationResponse) _then) = __$RouteLocationResponseCopyWithImpl;
@override @useResult
$Res call({
 Route route, Location location
});


@override $RouteCopyWith<$Res> get route;@override $LocationCopyWith<$Res> get location;

}
/// @nodoc
class __$RouteLocationResponseCopyWithImpl<$Res>
    implements _$RouteLocationResponseCopyWith<$Res> {
  __$RouteLocationResponseCopyWithImpl(this._self, this._then);

  final _RouteLocationResponse _self;
  final $Res Function(_RouteLocationResponse) _then;

/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? route = null,Object? location = null,}) {
  return _then(_RouteLocationResponse(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as Route,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location,
  ));
}

/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteCopyWith<$Res> get route {
  
  return $RouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of RouteLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get location {
  
  return $LocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
