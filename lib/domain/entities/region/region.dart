import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/shared/simple_date.dart';

part 'region.freezed.dart';
part 'region.g.dart'; // Generated file from json_serializable

@freezed
abstract class Region with _$Region {
  const factory Region({
    required String id,
    required String name,
    String? description,
    required String prefecture,
    required String city,
    required List<SimpleDate> dates,
    String? imagePath,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  static Region sample = Region(
    id: "kakegawamatsuri",
    name: "掛川祭",
    prefecture: "静岡県",
    city: "掛川市",
    dates: [SimpleDate.sample],
  );
}
