import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matool2/domain/entities/shared/coordinate.dart';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
abstract class District with _$District {
  const factory District({
    required String id,
    required String name,
    required String regionId,
    String? description,
    Coordinate? base,
    List<Coordinate>? area,
    String? imagePath,
  }) = _District;

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);

  static District sample = District(
    id: 'johoku',
    name: '城北町',
    regionId: 'kakegawamatsuri',
    description: '省略',
    base: Coordinate.sample,
    area: [],
    imagePath: null,
  );
}
