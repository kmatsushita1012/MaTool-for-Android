import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/shared/coordinate.dart';
import 'package:matool2/domain/entities/shared/simple_date.dart';
import 'package:matool2/domain/entities/shared/simple_time.dart';

part 'public_location.freezed.dart';
part 'public_location.g.dart';

@freezed
abstract class PublicLocation with _$PublicLocation {
  const factory PublicLocation({
    required String districtId,
    required Coordinate coordinate,
    required SimpleDate date,
    required SimpleTime time,
  }) = _PublicLocation;

  factory PublicLocation.fromJson(Map<String, dynamic> json) =>
      _$PublicLocationFromJson(json);

  static PublicLocation sample = PublicLocation(
    districtId: 'johoku',
    coordinate: Coordinate.sample,
    date: SimpleDate.sample,
    time: SimpleTime.sample,
  );
}
