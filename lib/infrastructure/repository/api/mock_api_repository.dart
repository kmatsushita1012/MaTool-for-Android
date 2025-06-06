import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/entities/entities.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';

class MockRemoteRepository extends ApiRepository {
  @override
  Future<Result<List<Region>, ApiError>> getRegions() async {
    return Success([Region.sample]);
  }

  @override
  Future<Result<Region, ApiError>> getRegion(String regionId) async {
    return Success(Region.sample);
  }

  @override
  Future<Result<String, ApiError>> putRegion(
    Region region,
    String accessToken,
  ) async {
    return const Success('Success');
  }

  @override
  Future<Result<List<PublicDistrict>, ApiError>> getDistricts(
    String regionId,
  ) async {
    return Success([PublicDistrict.sample]);
  }

  @override
  Future<Result<PublicDistrict, ApiError>> getDistrict(
    String districtId,
  ) async {
    return Success(PublicDistrict.sample);
  }

  @override
  Future<Result<String, ApiError>> putDistrict(
    District district,
    String accessToken,
  ) async {
    return const Success('Success');
  }

  @override
  Future<Result<List<RouteSummary>, ApiError>> getRoutes(
    String districtId,
  ) async {
    return Success([RouteSummary.sample]);
  }

  @override
  Future<Result<PublicRoute, ApiError>> getRoute(
    String districtId,
    SimpleDate date,
    String title,
  ) async {
    return Success(PublicRoute.sample);
  }

  @override
  Future<Result<PublicRoute, ApiError>> getCurrentRoute(
    String districtId,
  ) async {
    return Success(PublicRoute.sample);
  }

  @override
  Future<Result<String, ApiError>> postRoute(
    Route route,
    String accessToken,
  ) async {
    return const Success('Success');
  }

  @override
  Future<Result<String, ApiError>> putRoute(
    Route route,
    String accessToken,
  ) async {
    return const Success('Success');
  }

  @override
  Future<Result<PublicLocation, ApiError>> getLocation(
    String districtId,
  ) async {
    return Success(PublicLocation.sample);
  }

  @override
  Future<Result<String, ApiError>> putLocation(
    Location location,
    String accessToken,
  ) async {
    return const Success('Success');
  }

  @override
  Future<Result<String, ApiError>> deleteRoute(
    String districtId,
    SimpleDate date,
    String title,
    String accessToken,
  ) async {
    return const Success('Success');
  }

  @override
  Future<Result<String, ApiError>> deleteLocation(
    String districtId,
    String accessToken,
  ) async {
    return const Success('Success');
  }

  @override
  Future<Result<List<Coordinate>, ApiError>> getSegmentCoordinate(
    Coordinate start,
    Coordinate end,
  ) async {
    return Success([Coordinate.sample, Coordinate.sample]);
  }
}
