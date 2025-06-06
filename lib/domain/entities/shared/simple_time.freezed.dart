// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimpleTime {

 int get hour; int get minute;
/// Create a copy of SimpleTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleTimeCopyWith<SimpleTime> get copyWith => _$SimpleTimeCopyWithImpl<SimpleTime>(this as SimpleTime, _$identity);

  /// Serializes this SimpleTime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleTime&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,minute);

@override
String toString() {
  return 'SimpleTime(hour: $hour, minute: $minute)';
}


}

/// @nodoc
abstract mixin class $SimpleTimeCopyWith<$Res>  {
  factory $SimpleTimeCopyWith(SimpleTime value, $Res Function(SimpleTime) _then) = _$SimpleTimeCopyWithImpl;
@useResult
$Res call({
 int hour, int minute
});




}
/// @nodoc
class _$SimpleTimeCopyWithImpl<$Res>
    implements $SimpleTimeCopyWith<$Res> {
  _$SimpleTimeCopyWithImpl(this._self, this._then);

  final SimpleTime _self;
  final $Res Function(SimpleTime) _then;

/// Create a copy of SimpleTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hour = null,Object? minute = null,}) {
  return _then(_self.copyWith(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SimpleTime implements SimpleTime {
  const _SimpleTime({required this.hour, required this.minute});
  factory _SimpleTime.fromJson(Map<String, dynamic> json) => _$SimpleTimeFromJson(json);

@override final  int hour;
@override final  int minute;

/// Create a copy of SimpleTime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimpleTimeCopyWith<_SimpleTime> get copyWith => __$SimpleTimeCopyWithImpl<_SimpleTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimpleTimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimpleTime&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,minute);

@override
String toString() {
  return 'SimpleTime(hour: $hour, minute: $minute)';
}


}

/// @nodoc
abstract mixin class _$SimpleTimeCopyWith<$Res> implements $SimpleTimeCopyWith<$Res> {
  factory _$SimpleTimeCopyWith(_SimpleTime value, $Res Function(_SimpleTime) _then) = __$SimpleTimeCopyWithImpl;
@override @useResult
$Res call({
 int hour, int minute
});




}
/// @nodoc
class __$SimpleTimeCopyWithImpl<$Res>
    implements _$SimpleTimeCopyWith<$Res> {
  __$SimpleTimeCopyWithImpl(this._self, this._then);

  final _SimpleTime _self;
  final $Res Function(_SimpleTime) _then;

/// Create a copy of SimpleTime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hour = null,Object? minute = null,}) {
  return _then(_SimpleTime(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
