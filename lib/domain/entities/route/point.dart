import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/shared/coordinate.dart';
import 'package:matool2/domain/entities/shared/simple_time.dart';
import 'package:uuid/uuid.dart';

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
abstract class Point with _$Point {
  const factory Point({
    required String id,
    required Coordinate coordinate,
    required bool isPassed,
    String? title,
    String? description,
    SimpleTime? time,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

  static Point sample = Point(
    id: const Uuid().v4(),
    coordinate: Coordinate.sample,
    isPassed: false,
  );
}
