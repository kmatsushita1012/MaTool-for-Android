// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimpleDate {

 int get year; int get month; int get day;
/// Create a copy of SimpleDate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<SimpleDate> get copyWith => _$SimpleDateCopyWithImpl<SimpleDate>(this as SimpleDate, _$identity);

  /// Serializes this SimpleDate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleDate&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,day);

@override
String toString() {
  return 'SimpleDate(year: $year, month: $month, day: $day)';
}


}

/// @nodoc
abstract mixin class $SimpleDateCopyWith<$Res>  {
  factory $SimpleDateCopyWith(SimpleDate value, $Res Function(SimpleDate) _then) = _$SimpleDateCopyWithImpl;
@useResult
$Res call({
 int year, int month, int day
});




}
/// @nodoc
class _$SimpleDateCopyWithImpl<$Res>
    implements $SimpleDateCopyWith<$Res> {
  _$SimpleDateCopyWithImpl(this._self, this._then);

  final SimpleDate _self;
  final $Res Function(SimpleDate) _then;

/// Create a copy of SimpleDate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? month = null,Object? day = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SimpleDate implements SimpleDate {
  const _SimpleDate({required this.year, required this.month, required this.day});
  factory _SimpleDate.fromJson(Map<String, dynamic> json) => _$SimpleDateFromJson(json);

@override final  int year;
@override final  int month;
@override final  int day;

/// Create a copy of SimpleDate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimpleDateCopyWith<_SimpleDate> get copyWith => __$SimpleDateCopyWithImpl<_SimpleDate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimpleDateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimpleDate&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,day);

@override
String toString() {
  return 'SimpleDate(year: $year, month: $month, day: $day)';
}


}

/// @nodoc
abstract mixin class _$SimpleDateCopyWith<$Res> implements $SimpleDateCopyWith<$Res> {
  factory _$SimpleDateCopyWith(_SimpleDate value, $Res Function(_SimpleDate) _then) = __$SimpleDateCopyWithImpl;
@override @useResult
$Res call({
 int year, int month, int day
});




}
/// @nodoc
class __$SimpleDateCopyWithImpl<$Res>
    implements _$SimpleDateCopyWith<$Res> {
  __$SimpleDateCopyWithImpl(this._self, this._then);

  final _SimpleDate _self;
  final $Res Function(_SimpleDate) _then;

/// Create a copy of SimpleDate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,Object? day = null,}) {
  return _then(_SimpleDate(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
