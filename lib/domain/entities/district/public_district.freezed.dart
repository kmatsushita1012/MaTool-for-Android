// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_district.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicDistrict {

 String get id; String get name; String get regionId; String? get description; Coordinate? get base; List<Coordinate>? get area; String? get imagePath;
/// Create a copy of PublicDistrict
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicDistrictCopyWith<PublicDistrict> get copyWith => _$PublicDistrictCopyWithImpl<PublicDistrict>(this as PublicDistrict, _$identity);

  /// Serializes this PublicDistrict to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicDistrict&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.description, description) || other.description == description)&&(identical(other.base, base) || other.base == base)&&const DeepCollectionEquality().equals(other.area, area)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,regionId,description,base,const DeepCollectionEquality().hash(area),imagePath);

@override
String toString() {
  return 'PublicDistrict(id: $id, name: $name, regionId: $regionId, description: $description, base: $base, area: $area, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $PublicDistrictCopyWith<$Res>  {
  factory $PublicDistrictCopyWith(PublicDistrict value, $Res Function(PublicDistrict) _then) = _$PublicDistrictCopyWithImpl;
@useResult
$Res call({
 String id, String name, String regionId, String? description, Coordinate? base, List<Coordinate>? area, String? imagePath
});


$CoordinateCopyWith<$Res>? get base;

}
/// @nodoc
class _$PublicDistrictCopyWithImpl<$Res>
    implements $PublicDistrictCopyWith<$Res> {
  _$PublicDistrictCopyWithImpl(this._self, this._then);

  final PublicDistrict _self;
  final $Res Function(PublicDistrict) _then;

/// Create a copy of PublicDistrict
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? regionId = null,Object? description = freezed,Object? base = freezed,Object? area = freezed,Object? imagePath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as Coordinate?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as List<Coordinate>?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PublicDistrict
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinateCopyWith<$Res>? get base {
    if (_self.base == null) {
    return null;
  }

  return $CoordinateCopyWith<$Res>(_self.base!, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PublicDistrict implements PublicDistrict {
  const _PublicDistrict({required this.id, required this.name, required this.regionId, this.description, this.base, final  List<Coordinate>? area, this.imagePath}): _area = area;
  factory _PublicDistrict.fromJson(Map<String, dynamic> json) => _$PublicDistrictFromJson(json);

@override final  String id;
@override final  String name;
@override final  String regionId;
@override final  String? description;
@override final  Coordinate? base;
 final  List<Coordinate>? _area;
@override List<Coordinate>? get area {
  final value = _area;
  if (value == null) return null;
  if (_area is EqualUnmodifiableListView) return _area;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? imagePath;

/// Create a copy of PublicDistrict
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicDistrictCopyWith<_PublicDistrict> get copyWith => __$PublicDistrictCopyWithImpl<_PublicDistrict>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicDistrictToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicDistrict&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.description, description) || other.description == description)&&(identical(other.base, base) || other.base == base)&&const DeepCollectionEquality().equals(other._area, _area)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,regionId,description,base,const DeepCollectionEquality().hash(_area),imagePath);

@override
String toString() {
  return 'PublicDistrict(id: $id, name: $name, regionId: $regionId, description: $description, base: $base, area: $area, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$PublicDistrictCopyWith<$Res> implements $PublicDistrictCopyWith<$Res> {
  factory _$PublicDistrictCopyWith(_PublicDistrict value, $Res Function(_PublicDistrict) _then) = __$PublicDistrictCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String regionId, String? description, Coordinate? base, List<Coordinate>? area, String? imagePath
});


@override $CoordinateCopyWith<$Res>? get base;

}
/// @nodoc
class __$PublicDistrictCopyWithImpl<$Res>
    implements _$PublicDistrictCopyWith<$Res> {
  __$PublicDistrictCopyWithImpl(this._self, this._then);

  final _PublicDistrict _self;
  final $Res Function(_PublicDistrict) _then;

/// Create a copy of PublicDistrict
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? regionId = null,Object? description = freezed,Object? base = freezed,Object? area = freezed,Object? imagePath = freezed,}) {
  return _then(_PublicDistrict(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,regionId: null == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as Coordinate?,area: freezed == area ? _self._area : area // ignore: cast_nullable_to_non_nullable
as List<Coordinate>?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PublicDistrict
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinateCopyWith<$Res>? get base {
    if (_self.base == null) {
    return null;
  }

  return $CoordinateCopyWith<$Res>(_self.base!, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}

// dart format on
