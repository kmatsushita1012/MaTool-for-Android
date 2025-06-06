import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/shared/simple_date.dart';

part 'route_summary.freezed.dart';
part 'route_summary.g.dart';

@freezed
abstract class RouteSummary with _$RouteSummary {
  const factory RouteSummary({
    required String districtId,
    required SimpleDate date,
    required String title,
  }) = _RouteSummary;

  factory RouteSummary.fromJson(Map<String, dynamic> json) =>
      _$RouteSummaryFromJson(json);

  static RouteSummary sample = RouteSummary(
    districtId: 'johoku',
    date: SimpleDate.sample,
    title: '午前',
  );
}
