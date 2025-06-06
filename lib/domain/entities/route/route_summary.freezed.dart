// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteSummary {

 String get districtId; SimpleDate get date; String get title;
/// Create a copy of RouteSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteSummaryCopyWith<RouteSummary> get copyWith => _$RouteSummaryCopyWithImpl<RouteSummary>(this as RouteSummary, _$identity);

  /// Serializes this RouteSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteSummary&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.date, date) || other.date == date)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,date,title);

@override
String toString() {
  return 'RouteSummary(districtId: $districtId, date: $date, title: $title)';
}


}

/// @nodoc
abstract mixin class $RouteSummaryCopyWith<$Res>  {
  factory $RouteSummaryCopyWith(RouteSummary value, $Res Function(RouteSummary) _then) = _$RouteSummaryCopyWithImpl;
@useResult
$Res call({
 String districtId, SimpleDate date, String title
});


$SimpleDateCopyWith<$Res> get date;

}
/// @nodoc
class _$RouteSummaryCopyWithImpl<$Res>
    implements $RouteSummaryCopyWith<$Res> {
  _$RouteSummaryCopyWithImpl(this._self, this._then);

  final RouteSummary _self;
  final $Res Function(RouteSummary) _then;

/// Create a copy of RouteSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? districtId = null,Object? date = null,Object? title = null,}) {
  return _then(_self.copyWith(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SimpleDate,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RouteSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RouteSummary implements RouteSummary {
  const _RouteSummary({required this.districtId, required this.date, required this.title});
  factory _RouteSummary.fromJson(Map<String, dynamic> json) => _$RouteSummaryFromJson(json);

@override final  String districtId;
@override final  SimpleDate date;
@override final  String title;

/// Create a copy of RouteSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteSummaryCopyWith<_RouteSummary> get copyWith => __$RouteSummaryCopyWithImpl<_RouteSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteSummary&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.date, date) || other.date == date)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,districtId,date,title);

@override
String toString() {
  return 'RouteSummary(districtId: $districtId, date: $date, title: $title)';
}


}

/// @nodoc
abstract mixin class _$RouteSummaryCopyWith<$Res> implements $RouteSummaryCopyWith<$Res> {
  factory _$RouteSummaryCopyWith(_RouteSummary value, $Res Function(_RouteSummary) _then) = __$RouteSummaryCopyWithImpl;
@override @useResult
$Res call({
 String districtId, SimpleDate date, String title
});


@override $SimpleDateCopyWith<$Res> get date;

}
/// @nodoc
class __$RouteSummaryCopyWithImpl<$Res>
    implements _$RouteSummaryCopyWith<$Res> {
  __$RouteSummaryCopyWithImpl(this._self, this._then);

  final _RouteSummary _self;
  final $Res Function(_RouteSummary) _then;

/// Create a copy of RouteSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? districtId = null,Object? date = null,Object? title = null,}) {
  return _then(_RouteSummary(
districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as SimpleDate,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RouteSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleDateCopyWith<$Res> get date {
  
  return $SimpleDateCopyWith<$Res>(_self.date, (value) {
    return _then(_self.copyWith(date: value));
  });
}
}

// dart format on
