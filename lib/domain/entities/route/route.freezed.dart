// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Route {

 String get districtId; SimpleDate get date; String get title; List<Point> get points; List<Segment> get segments; SimpleTime get start; SimpleTime get goal; String? get description;
/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteCopyWith<Route> get copyWith => _$RouteCopyWithImpl<Route>(this as Route, _$identity);

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Route&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.date, date) || other.date == date)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.points, points)&&const DeepCollectionEquality().equals(other.segments, segments)&&(identical(other.start, start) || other.start == start)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,date,title,const DeepCollectionEquality().hash(points),const DeepCollectionEquality().hash(segments),start,goal,description);

@override
String toString() {
  return 'Route(districtId: $districtId, date: $date, title: $title, points: $points, segments: $segments, start: $start, goal: $goal, description: $description)';
}


}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res>  {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) = _$RouteCopyWithImpl;
@useResult
$Res call({
 String districtId, SimpleDate date, String title, List<Point> points, List<Segment> segments, SimpleTime start, SimpleTime goal, String? description
});


$SimpleDateCopyWith<$Res> get date;$SimpleTimeCopyWith<$Res> get start;$SimpleTimeCopyWith<$Res> get goal;

}
/// @nodoc
class _$RouteCopyWithImpl<$Res>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? districtId = null,Object? date = null,Object? title = null,Object? points = null,Object? segments = null,Object? start = null,Object? goal = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get start {
  
  return $SimpleTimeCopyWith<$Res>(_self.start, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of Route
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

class _Route implements Route {
  const _Route({required this.districtId, required this.date, required this.title, required final  List<Point> points, required final  List<Segment> segments, required this.start, required this.goal, this.description}): _points = points,_segments = segments;
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

@override final  String districtId;
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

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteCopyWith<_Route> get copyWith => __$RouteCopyWithImpl<_Route>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Route&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.date, date) || other.date == date)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._points, _points)&&const DeepCollectionEquality().equals(other._segments, _segments)&&(identical(other.start, start) || other.start == start)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,date,title,const DeepCollectionEquality().hash(_points),const DeepCollectionEquality().hash(_segments),start,goal,description);

@override
String toString() {
  return 'Route(districtId: $districtId, date: $date, title: $title, points: $points, segments: $segments, start: $start, goal: $goal, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) = __$RouteCopyWithImpl;
@override @useResult
$Res call({
 String districtId, SimpleDate date, String title, List<Point> points, List<Segment> segments, SimpleTime start, SimpleTime goal, String? description
});


@override $SimpleDateCopyWith<$Res> get date;@override $SimpleTimeCopyWith<$Res> get start;@override $SimpleTimeCopyWith<$Res> get goal;

}
/// @nodoc
class __$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? districtId = null,Object? date = null,Object? title = null,Object? points = null,Object? segments = null,Object? start = null,Object? goal = null,Object? description = freezed,}) {
  return _then(_Route(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<$Res> get start {
  
  return $SimpleTimeCopyWith<$Res>(_self.start, (value) {
    return _then(_self.copyWith(start: value));
  });
}/// Create a copy of Route
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
