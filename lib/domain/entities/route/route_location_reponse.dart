import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/domain/entities/location/location.dart';
import 'package:matool2/domain/entities/route/route.dart';

part 'route_location_reponse.freezed.dart';
part 'route_location_reponse.g.dart';

@freezed
abstract class RouteLocationResponse with _$RouteLocationResponse {
  const factory RouteLocationResponse({
    required Route route,
    required Location location,
  }) = _RouteLocationResponse;

  factory RouteLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$RouteLocationResponseFromJson(json);
}
