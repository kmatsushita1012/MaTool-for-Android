import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/shared/coordinate.dart';
import 'package:matool2/domain/entities/shared/simple_date.dart';
import 'package:matool2/domain/entities/shared/simple_time.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  const factory Location({
    required String districtId,
    required Coordinate coordinate,
    required SimpleDate date,
    required SimpleTime time,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static Location sample = Location(
    districtId: 'johoku',
    coordinate: Coordinate.sample,
    date: SimpleDate.sample,
    time: SimpleTime.sample,
  );
}
