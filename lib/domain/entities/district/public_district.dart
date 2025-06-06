import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matool2/domain/entities/shared/coordinate.dart';

part 'public_district.freezed.dart';
part 'public_district.g.dart';

@freezed
abstract class PublicDistrict with _$PublicDistrict {
  const factory PublicDistrict({
    required String id,
    required String name,
    required String regionId,
    String? description,
    Coordinate? base,
    List<Coordinate>? area,
    String? imagePath,
  }) = _PublicDistrict;

  factory PublicDistrict.fromJson(Map<String, dynamic> json) =>
      _$PublicDistrictFromJson(json);

  static PublicDistrict sample = PublicDistrict(
    id: 'johoku',
    name: '城北町',
    regionId: 'kakegawamatsuri',
    description: '省略',
    base: Coordinate.sample,
    area: [],
    imagePath: null,
  );
}
