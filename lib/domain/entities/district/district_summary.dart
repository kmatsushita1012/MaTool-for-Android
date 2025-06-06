import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_summary.freezed.dart';
part 'district_summary.g.dart';

@freezed
abstract class DistrictSummary with _$DistrictSummary {
  const factory DistrictSummary({
    required String id,
    required String name,
  }) = _DistrictSummary;

  factory DistrictSummary.fromJson(Map<String, dynamic> json) =>
      _$DistrictSummaryFromJson(json);

  static DistrictSummary sample = const DistrictSummary(
    id: 'johoku',
    name: '城北町',
  );
}
