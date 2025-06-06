import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/shared/coordinate.dart';
import 'package:uuid/uuid.dart';

part 'segment.freezed.dart';
part 'segment.g.dart';

@freezed
abstract class Segment with _$Segment {
  const factory Segment({
    required String id,
    required Coordinate start,
    required Coordinate end,
    required List<Coordinate> coordinates,
    required bool isPassed,
  }) = _Segment;

  factory Segment.fromJson(Map<String, dynamic> json) =>
      _$SegmentFromJson(json);

  static Segment sample = Segment(
    id: const Uuid().v4(),
    start: Coordinate.sample,
    end: Coordinate.sample,
    coordinates: [],
    isPassed: false,
  );
}
