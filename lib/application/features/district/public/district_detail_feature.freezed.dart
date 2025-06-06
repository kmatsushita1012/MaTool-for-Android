// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_detail_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DistrictDetailState {

 AsyncValue<District> get item; set item(AsyncValue<District> value);
/// Create a copy of DistrictDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistrictDetailStateCopyWith<DistrictDetailState> get copyWith => _$DistrictDetailStateCopyWithImpl<DistrictDetailState>(this as DistrictDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DistrictDetailState&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'DistrictDetailState(item: $item)';
}


}

/// @nodoc
abstract mixin class $DistrictDetailStateCopyWith<$Res>  {
  factory $DistrictDetailStateCopyWith(DistrictDetailState value, $Res Function(DistrictDetailState) _then) = _$DistrictDetailStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<District> item
});




}
/// @nodoc
class _$DistrictDetailStateCopyWithImpl<$Res>
    implements $DistrictDetailStateCopyWith<$Res> {
  _$DistrictDetailStateCopyWithImpl(this._self, this._then);

  final DistrictDetailState _self;
  final $Res Function(DistrictDetailState) _then;

/// Create a copy of DistrictDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(DistrictDetailState(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as AsyncValue<District>,
  ));
}

}


// dart format on
