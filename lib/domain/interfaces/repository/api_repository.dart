import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/entities/entities.dart';
import 'package:riverpod/riverpod.dart';

final apiClientProvider = Provider<ApiRepository>(
  (_) => throw UnimplementedError(),
);

abstract class ApiRepository {
  Future<Result<List<Region>, ApiError>> getRegions();
  Future<Result<Region, ApiError>> getRegion(String regionId);
  Future<Result<String, ApiError>> putRegion(Region region, String accessToken);
  Future<Result<List<PublicDistrict>, ApiError>> getDistricts(String regionId);
  Future<Result<PublicDistrict, ApiError>> getDistrict(String districtId);
  Future<Result<String, ApiError>> putDistrict(
    District district,
    String accessToken,
  );
  Future<Result<List<RouteSummary>, ApiError>> getRoutes(String districtId);
  Future<Result<PublicRoute, ApiError>> getRoute(
    String districtId,
    SimpleDate date,
    String title,
  );
  Future<Result<PublicRoute, ApiError>> getCurrentRoute(String districtId);

  Future<Result<String, ApiError>> postRoute(Route route, String accessToken);
  Future<Result<String, ApiError>> putRoute(Route route, String accessToken);
  Future<Result<String, ApiError>> deleteRoute(
    String districtId,
    SimpleDate date,
    String title,
    String accessToken,
  );
  Future<Result<PublicLocation, ApiError>> getLocation(String districtId);
  Future<Result<String, ApiError>> putLocation(
    Location location,
    String accessToken,
  );
  Future<Result<String, ApiError>> deleteLocation(
    String districtId,
    String accessToken,
  );
  Future<Result<List<Coordinate>, ApiError>> getSegmentCoordinate(
    Coordinate start,
    Coordinate end,
  );
}

class ApiError {
  ApiError(this.message, {this.code, this.type = 'unknown'});
  ApiError.network(this.message, {this.code}) : type = 'network';
  ApiError.decode(this.message, {this.code}) : type = 'decode';
  ApiError.encode(this.message, {this.code}) : type = 'encode';
  ApiError.unknown(this.message, {this.code}) : type = 'unknown';
  final String message;
  final int? code;

  final String type;

  @override
  String toString() {
    return 'ApiError(message: $message, code: $code, type: $type)';
  }
}
