// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_summaries_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DistrictSummariesState {

 AsyncValue<List<DistrictSummary>> get items; set items(AsyncValue<List<DistrictSummary>> value);
/// Create a copy of DistrictSummariesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistrictSummariesStateCopyWith<DistrictSummariesState> get copyWith => _$DistrictSummariesStateCopyWithImpl<DistrictSummariesState>(this as DistrictSummariesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DistrictSummariesState&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'DistrictSummariesState(items: $items)';
}


}

/// @nodoc
abstract mixin class $DistrictSummariesStateCopyWith<$Res>  {
  factory $DistrictSummariesStateCopyWith(DistrictSummariesState value, $Res Function(DistrictSummariesState) _then) = _$DistrictSummariesStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<DistrictSummary>> items
});




}
/// @nodoc
class _$DistrictSummariesStateCopyWithImpl<$Res>
    implements $DistrictSummariesStateCopyWith<$Res> {
  _$DistrictSummariesStateCopyWithImpl(this._self, this._then);

  final DistrictSummariesState _self;
  final $Res Function(DistrictSummariesState) _then;

/// Create a copy of DistrictSummariesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(DistrictSummariesState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<DistrictSummary>>,
  ));
}

}


// dart format on
