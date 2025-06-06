import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/route/point.dart';
import 'package:matool2/domain/entities/route/segment.dart';
import 'package:matool2/domain/entities/shared/simple_date.dart';
import 'package:matool2/domain/entities/shared/simple_time.dart';

part 'public_route.freezed.dart';
part 'public_route.g.dart';

@freezed
abstract class PublicRoute with _$PublicRoute {
  const factory PublicRoute({
    required String districtId,
    required String districtName,
    required SimpleDate date,
    required String title,
    required List<Point> points,
    required List<Segment> segments,
    required SimpleTime start,
    required SimpleTime goal,
    String? description,
  }) = _PublicRoute;

  factory PublicRoute.fromJson(Map<String, dynamic> json) =>
      _$PublicRouteFromJson(json);

  static PublicRoute sample = PublicRoute(
    districtId: 'Johoku',
    districtName: '城北町',
    date: SimpleDate.sample,
    title: '午前',
    description: '省略',
    points: [Point.sample],
    segments: [Segment.sample],
    start: SimpleTime.sample,
    goal: SimpleTime.sample,
  );
}
