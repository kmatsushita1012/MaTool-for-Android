// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Point {

 String get id; Coordinate get coordinate; bool get isPassed; String? get title; String? get description; SimpleTime? get time;
/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointCopyWith<Point> get copyWith => _$PointCopyWithImpl<Point>(this as Point, _$identity);

  /// Serializes this Point to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Point&&(identical(other.id, id) || other.id == id)&&(identical(other.coordinate, coordinate) || other.coordinate == coordinate)&&(identical(other.isPassed, isPassed) || other.isPassed == isPassed)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,coordinate,isPassed,title,description,time);

@override
String toString() {
  return 'Point(id: $id, coordinate: $coordinate, isPassed: $isPassed, title: $title, description: $description, time: $time)';
}


}

/// @nodoc
abstract mixin class $PointCopyWith<$Res>  {
  factory $PointCopyWith(Point value, $Res Function(Point) _then) = _$PointCopyWithImpl;
@useResult
$Res call({
 String id, Coordinate coordinate, bool isPassed, String? title, String? description, SimpleTime? time
});


$CoordinateCopyWith<$Res> get coordinate;$SimpleTimeCopyWith<$Res>? get time;

}
/// @nodoc
class _$PointCopyWithImpl<$Res>
    implements $PointCopyWith<$Res> {
  _$PointCopyWithImpl(this._self, this._then);

  final Point _self;
  final $Res Function(Point) _then;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? coordinate = null,Object? isPassed = null,Object? title = freezed,Object? description = freezed,Object? time = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,coordinate: null == coordinate ? _self.coordinate : coordinate // ignore: cast_nullable_to_non_nullable
as Coordinate,isPassed: null == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as bool,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as SimpleTime?,
  ));
}
/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinateCopyWith<$Res> get coordinate {
  
  return $CoordinateCopyWith<$Res>(_self.coordinate, (value) {
    return _then(_self.copyWith(coordinate: value));
  });
}/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res>? get time {
    if (_self.time == null) {
    return null;
  }

  return $SimpleTimeCopyWith<$Res>(_self.time!, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Point implements Point {
  const _Point({required this.id, required this.coordinate, required this.isPassed, this.title, this.description, this.time});
  factory _Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

@override final  String id;
@override final  Coordinate coordinate;
@override final  bool isPassed;
@override final  String? title;
@override final  String? description;
@override final  SimpleTime? time;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointCopyWith<_Point> get copyWith => __$PointCopyWithImpl<_Point>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Point&&(identical(other.id, id) || other.id == id)&&(identical(other.coordinate, coordinate) || other.coordinate == coordinate)&&(identical(other.isPassed, isPassed) || other.isPassed == isPassed)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,coordinate,isPassed,title,description,time);

@override
String toString() {
  return 'Point(id: $id, coordinate: $coordinate, isPassed: $isPassed, title: $title, description: $description, time: $time)';
}


}

/// @nodoc
abstract mixin class _$PointCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$PointCopyWith(_Point value, $Res Function(_Point) _then) = __$PointCopyWithImpl;
@override @useResult
$Res call({
 String id, Coordinate coordinate, bool isPassed, String? title, String? description, SimpleTime? time
});


@override $CoordinateCopyWith<$Res> get coordinate;@override $SimpleTimeCopyWith<$Res>? get time;

}
/// @nodoc
class __$PointCopyWithImpl<$Res>
    implements _$PointCopyWith<$Res> {
  __$PointCopyWithImpl(this._self, this._then);

  final _Point _self;
  final $Res Function(_Point) _then;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? coordinate = null,Object? isPassed = null,Object? title = freezed,Object? description = freezed,Object? time = freezed,}) {
  return _then(_Point(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,coordinate: null == coordinate ? _self.coordinate : coordinate // ignore: cast_nullable_to_non_nullable
as Coordinate,isPassed: null == isPassed ? _self.isPassed : isPassed // ignore: cast_nullable_to_non_nullable
as bool,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as SimpleTime?,
  ));
}

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinateCopyWith<$Res> get coordinate {
  
  return $CoordinateCopyWith<$Res>(_self.coordinate, (value) {
    return _then(_self.copyWith(coordinate: value));
  });
}/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res>? get time {
    if (_self.time == null) {
    return null;
  }

  return $SimpleTimeCopyWith<$Res>(_self.time!, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}

// dart format on
