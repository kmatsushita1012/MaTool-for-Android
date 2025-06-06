// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DistrictSummary {

 String get id; String get name;
/// Create a copy of DistrictSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistrictSummaryCopyWith<DistrictSummary> get copyWith => _$DistrictSummaryCopyWithImpl<DistrictSummary>(this as DistrictSummary, _$identity);

  /// Serializes this DistrictSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DistrictSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DistrictSummary(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $DistrictSummaryCopyWith<$Res>  {
  factory $DistrictSummaryCopyWith(DistrictSummary value, $Res Function(DistrictSummary) _then) = _$DistrictSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$DistrictSummaryCopyWithImpl<$Res>
    implements $DistrictSummaryCopyWith<$Res> {
  _$DistrictSummaryCopyWithImpl(this._self, this._then);

  final DistrictSummary _self;
  final $Res Function(DistrictSummary) _then;

/// Create a copy of DistrictSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DistrictSummary implements DistrictSummary {
  const _DistrictSummary({required this.id, required this.name});
  factory _DistrictSummary.fromJson(Map<String, dynamic> json) => _$DistrictSummaryFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of DistrictSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DistrictSummaryCopyWith<_DistrictSummary> get copyWith => __$DistrictSummaryCopyWithImpl<_DistrictSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DistrictSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DistrictSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DistrictSummary(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DistrictSummaryCopyWith<$Res> implements $DistrictSummaryCopyWith<$Res> {
  factory _$DistrictSummaryCopyWith(_DistrictSummary value, $Res Function(_DistrictSummary) _then) = __$DistrictSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$DistrictSummaryCopyWithImpl<$Res>
    implements _$DistrictSummaryCopyWith<$Res> {
  __$DistrictSummaryCopyWithImpl(this._self, this._then);

  final _DistrictSummary _self;
  final $Res Function(_DistrictSummary) _then;

/// Create a copy of DistrictSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_DistrictSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
