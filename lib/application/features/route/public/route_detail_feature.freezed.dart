// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_detail_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouteDetailState {

 AsyncValue<PublicRoute> get item; set item(AsyncValue<PublicRoute> value);
/// Create a copy of RouteDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteDetailStateCopyWith<RouteDetailState> get copyWith => _$RouteDetailStateCopyWithImpl<RouteDetailState>(this as RouteDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteDetailState&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'RouteDetailState(item: $item)';
}


}

/// @nodoc
abstract mixin class $RouteDetailStateCopyWith<$Res>  {
  factory $RouteDetailStateCopyWith(RouteDetailState value, $Res Function(RouteDetailState) _then) = _$RouteDetailStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<PublicRoute> item
});




}
/// @nodoc
class _$RouteDetailStateCopyWithImpl<$Res>
    implements $RouteDetailStateCopyWith<$Res> {
  _$RouteDetailStateCopyWithImpl(this._self, this._then);

  final RouteDetailState _self;
  final $Res Function(RouteDetailState) _then;

/// Create a copy of RouteDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,}) {
  return _then(RouteDetailState(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as AsyncValue<PublicRoute>,
  ));
}

}


// dart format on
