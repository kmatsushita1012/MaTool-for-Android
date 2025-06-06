// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_detail_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegionDetailState {

 AsyncValue<Region> get item; set item(AsyncValue<Region> value);
/// Create a copy of RegionDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegionDetailStateCopyWith<RegionDetailState> get copyWith => _$RegionDetailStateCopyWithImpl<RegionDetailState>(this as RegionDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegionDetailState&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'RegionDetailState(item: $item)';
}


}

/// @nodoc
abstract mixin class $RegionDetailStateCopyWith<$Res>  {
  factory $RegionDetailStateCopyWith(RegionDetailState value, $Res Function(RegionDetailState) _then) = _$RegionDetailStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<Region> item
});




}
/// @nodoc
class _$RegionDetailStateCopyWithImpl<$Res>
    implements $RegionDetailStateCopyWith<$Res> {
  _$RegionDetailStateCopyWithImpl(this._self, this._then);

  final RegionDetailState _self;
  final $Res Function(RegionDetailState) _then;

/// Create a copy of RegionDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(RegionDetailState(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as AsyncValue<Region>,
  ));
}

}


// dart format on
