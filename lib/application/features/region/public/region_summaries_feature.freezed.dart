// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_summaries_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegionSummariesState {

 AsyncValue<List<Region>> get items; set items(AsyncValue<List<Region>> value);
/// Create a copy of RegionSummariesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegionSummariesStateCopyWith<RegionSummariesState> get copyWith => _$RegionSummariesStateCopyWithImpl<RegionSummariesState>(this as RegionSummariesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegionSummariesState&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'RegionSummariesState(items: $items)';
}


}

/// @nodoc
abstract mixin class $RegionSummariesStateCopyWith<$Res>  {
  factory $RegionSummariesStateCopyWith(RegionSummariesState value, $Res Function(RegionSummariesState) _then) = _$RegionSummariesStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<Region>> items
});




}
/// @nodoc
class _$RegionSummariesStateCopyWithImpl<$Res>
    implements $RegionSummariesStateCopyWith<$Res> {
  _$RegionSummariesStateCopyWithImpl(this._self, this._then);

  final RegionSummariesState _self;
  final $Res Function(RegionSummariesState) _then;

/// Create a copy of RegionSummariesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(RegionSummariesState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<Region>>,
  ));
}

}


// dart format on
