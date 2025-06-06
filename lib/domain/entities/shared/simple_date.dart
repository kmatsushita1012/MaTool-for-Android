import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_date.freezed.dart';
part 'simple_date.g.dart'; // Generated file from json_serializable

@freezed
abstract class SimpleDate with _$SimpleDate {
  const factory SimpleDate({
    required int year,
    required int month,
    required int day,
  }) = _SimpleDate;

  factory SimpleDate.fromJson(Map<String, dynamic> json) =>
      _$SimpleDateFromJson(json);
  static SimpleDate sample = SimpleDate(year: 2025, month: 10, day: 12);
}
