// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicRoute {

 String get districtId; String get districtName; SimpleDate get date; String get title; List<Point> get points; List<Segment> get segments; SimpleTime get start; SimpleTime get goal; String? get description;
/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicRouteCopyWith<PublicRoute> get copyWith => _$PublicRouteCopyWithImpl<PublicRoute>(this as PublicRoute, _$identity);

  /// Serializes this PublicRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicRoute&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.date, date) || other.date == date)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.points, points)&&const DeepCollectionEquality().equals(other.segments, segments)&&(identical(other.start, start) || other.start == start)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,districtName,date,title,const DeepCollectionEquality().hash(points),const DeepCollectionEquality().hash(segments),start,goal,description);

@override
String toString() {
  return 'PublicRoute(districtId: $districtId, districtName: $districtName, date: $date, title: $title, points: $points, segments: $segments, start: $start, goal: $goal, description: $description)';
}


}

/// @nodoc
abstract mixin class $PublicRouteCopyWith<$Res>  {
  factory $PublicRouteCopyWith(PublicRoute value, $Res Function(PublicRoute) _then) = _$PublicRouteCopyWithImpl;
@useResult
$Res call({
 String districtId, String districtName, SimpleDate date, String title, List<Point> points, List<Segment> segments, SimpleTime start, SimpleTime goal, String? description
});


$SimpleDateCopyWith<$Res> get date;$SimpleTimeCopyWith<$Res> get start;$SimpleTimeCopyWith<$Res> get goal;

}
/// @nodoc
class _$PublicRouteCopyWithImpl<$Res>
    implements $PublicRouteCopyWith<$Res> {
  _$PublicRouteCopyWithImpl(this._self, this._then);

  final PublicRoute _self;
  final $Res Function(PublicRoute) _then;

/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? districtId = null,Object? districtName = null,Object? date = null,Object? title = null,Object? points = null,Object? segments = null,Object? start = null,Object? goal = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,districtName: null == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SimpleDate,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<Point>,segments: null == segments ? _self.segments : segments // ignore: cast_nullable_to_non_nullable
as List<Segment>,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as SimpleTime,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as SimpleTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get start {
  
  return $SimpleTimeCopyWith<$Res>(_self.start, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get goal {
  
  return $SimpleTimeCopyWith<$Res>(_self.goal, (value) {
    return _then(_self.copyWith(goal: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PublicRoute implements PublicRoute {
  const _PublicRoute({required this.districtId, required this.districtName, required this.date, required this.title, required final  List<Point> points, required final  List<Segment> segments, required this.start, required this.goal, this.description}): _points = points,_segments = segments;
  factory _PublicRoute.fromJson(Map<String, dynamic> json) => _$PublicRouteFromJson(json);

@override final  String districtId;
@override final  String districtName;
@override final  SimpleDate date;
@override final  String title;
 final  List<Point> _points;
@override List<Point> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

 final  List<Segment> _segments;
@override List<Segment> get segments {
  if (_segments is EqualUnmodifiableListView) return _segments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_segments);
}

@override final  SimpleTime start;
@override final  SimpleTime goal;
@override final  String? description;

/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicRouteCopyWith<_PublicRoute> get copyWith => __$PublicRouteCopyWithImpl<_PublicRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicRoute&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.districtName, districtName) || other.districtName == districtName)&&(identical(other.date, date) || other.date == date)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._points, _points)&&const DeepCollectionEquality().equals(other._segments, _segments)&&(identical(other.start, start) || other.start == start)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,districtName,date,title,const DeepCollectionEquality().hash(_points),const DeepCollectionEquality().hash(_segments),start,goal,description);

@override
String toString() {
  return 'PublicRoute(districtId: $districtId, districtName: $districtName, date: $date, title: $title, points: $points, segments: $segments, start: $start, goal: $goal, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PublicRouteCopyWith<$Res> implements $PublicRouteCopyWith<$Res> {
  factory _$PublicRouteCopyWith(_PublicRoute value, $Res Function(_PublicRoute) _then) = __$PublicRouteCopyWithImpl;
@override @useResult
$Res call({
 String districtId, String districtName, SimpleDate date, String title, List<Point> points, List<Segment> segments, SimpleTime start, SimpleTime goal, String? description
});


@override $SimpleDateCopyWith<$Res> get date;@override $SimpleTimeCopyWith<$Res> get start;@override $SimpleTimeCopyWith<$Res> get goal;

}
/// @nodoc
class __$PublicRouteCopyWithImpl<$Res>
    implements _$PublicRouteCopyWith<$Res> {
  __$PublicRouteCopyWithImpl(this._self, this._then);

  final _PublicRoute _self;
  final $Res Function(_PublicRoute) _then;

/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? districtId = null,Object? districtName = null,Object? date = null,Object? title = null,Object? points = null,Object? segments = null,Object? start = null,Object? goal = null,Object? description = freezed,}) {
  return _then(_PublicRoute(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,districtName: null == districtName ? _self.districtName : districtName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SimpleDate,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<Point>,segments: null == segments ? _self._segments : segments // ignore: cast_nullable_to_non_nullable
as List<Segment>,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as SimpleTime,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as SimpleTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get start {
  
  return $SimpleTimeCopyWith<$Res>(_self.start, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of PublicRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get goal {
  
  return $SimpleTimeCopyWith<$Res>(_self.goal, (value) {
    return _then(_self.copyWith(goal: value));
  });
}
}

// dart format on
