// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_summaries_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouteSummariesState {

 AsyncValue<List<RouteSummary>> get items; set items(AsyncValue<List<RouteSummary>> value);
/// Create a copy of RouteSummariesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteSummariesStateCopyWith<RouteSummariesState> get copyWith => _$RouteSummariesStateCopyWithImpl<RouteSummariesState>(this as RouteSummariesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteSummariesState&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'RouteSummariesState(items: $items)';
}


}

/// @nodoc
abstract mixin class $RouteSummariesStateCopyWith<$Res>  {
  factory $RouteSummariesStateCopyWith(RouteSummariesState value, $Res Function(RouteSummariesState) _then) = _$RouteSummariesStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<RouteSummary>> items
});




}
/// @nodoc
class _$RouteSummariesStateCopyWithImpl<$Res>
    implements $RouteSummariesStateCopyWith<$Res> {
  _$RouteSummariesStateCopyWithImpl(this._self, this._then);

  final RouteSummariesState _self;
  final $Res Function(RouteSummariesState) _then;

/// Create a copy of RouteSummariesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(RouteSummariesState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<RouteSummary>>,
  ));
}

}


// dart format on
