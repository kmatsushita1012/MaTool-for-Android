import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_time.freezed.dart';
part 'simple_time.g.dart'; // json_serializableで生成されるファイル

@freezed
abstract class SimpleTime with _$SimpleTime {
  const factory SimpleTime({required int hour, required int minute}) =
      _SimpleTime;

  factory SimpleTime.fromJson(Map<String, dynamic> json) =>
      _$SimpleTimeFromJson(json);
  static SimpleTime sample = SimpleTime(hour: 10, minute: 00);
}
