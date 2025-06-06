// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Location {

 String get districtId; Coordinate get coordinate; SimpleDate get date; SimpleTime get time;
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Location&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.coordinate, coordinate) || other.coordinate == coordinate)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,coordinate,date,time);

@override
String toString() {
  return 'Location(districtId: $districtId, coordinate: $coordinate, date: $date, time: $time)';
}


}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res>  {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) = _$LocationCopyWithImpl;
@useResult
$Res call({
 String districtId, Coordinate coordinate, SimpleDate date, SimpleTime time
});


$CoordinateCopyWith<$Res> get coordinate;$SimpleDateCopyWith<$Res> get date;$SimpleTimeCopyWith<$Res> get time;

}
/// @nodoc
class _$LocationCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? districtId = null,Object? coordinate = null,Object? date = null,Object? time = null,}) {
  return _then(_self.copyWith(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,coordinate: null == coordinate ? _self.coordinate : coordinate // ignore: cast_nullable_to_non_nullable
as Coordinate,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SimpleDate,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as SimpleTime,
  ));
}
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinateCopyWith<$Res> get coordinate {
  
  return $CoordinateCopyWith<$Res>(_self.coordinate, (value) {
    return _then(_self.copyWith(coordinate: value));
  });
}/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get time {
  
  return $SimpleTimeCopyWith<$Res>(_self.time, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Location implements Location {
  const _Location({required this.districtId, required this.coordinate, required this.date, required this.time});
  factory _Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

@override final  String districtId;
@override final  Coordinate coordinate;
@override final  SimpleDate date;
@override final  SimpleTime time;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.coordinate, coordinate) || other.coordinate == coordinate)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,coordinate,date,time);

@override
String toString() {
  return 'Location(districtId: $districtId, coordinate: $coordinate, date: $date, time: $time)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@override @useResult
$Res call({
 String districtId, Coordinate coordinate, SimpleDate date, SimpleTime time
});


@override $CoordinateCopyWith<$Res> get coordinate;@override $SimpleDateCopyWith<$Res> get date;@override $SimpleTimeCopyWith<$Res> get time;

}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? districtId = null,Object? coordinate = null,Object? date = null,Object? time = null,}) {
  return _then(_Location(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,coordinate: null == coordinate ? _self.coordinate : coordinate // ignore: cast_nullable_to_non_nullable
as Coordinate,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SimpleDate,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as SimpleTime,
  ));
}

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinateCopyWith<$Res> get coordinate {
  
  return $CoordinateCopyWith<$Res>(_self.coordinate, (value) {
    return _then(_self.copyWith(coordinate: value));
  });
}/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get time {
  
  return $SimpleTimeCopyWith<$Res>(_self.time, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}

// dart format on
