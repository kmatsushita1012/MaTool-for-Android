import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/route/point.dart';
import 'package:matool2/domain/entities/route/segment.dart';
import 'package:matool2/domain/entities/shared/simple_date.dart';
import 'package:matool2/domain/entities/shared/simple_time.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
abstract class Route with _$Route {
  const factory Route({
    required String districtId,
    required SimpleDate date,
    required String title,
    required List<Point> points,
    required List<Segment> segments,
    required SimpleTime start,
    required SimpleTime goal,
    String? description,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
  static Route sample = Route(
    districtId: 'johoku',
    date: SimpleDate.sample,
    title: '午前',
    description: '省略',
    points: [Point.sample],
    segments: [Segment.sample],
    start: SimpleTime.sample,
    goal: SimpleTime.sample,
  );
}
