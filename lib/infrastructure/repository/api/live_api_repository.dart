import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/entities/entities.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';
import 'package:matool2/infrastructure/repository/api/api_client.dart';
import 'package:matool2/infrastructure/repository/api/decoder.dart';
import 'package:matool2/infrastructure/repository/api/encoder.dart';

class LiveApiRepository extends ApiRepository {
  LiveApiRepository({required this.dataSource});

  final HttpClient dataSource;

  @override
  Future<Result<List<Region>, ApiError>> getRegions() async {
    try {
      final response = await dataSource.get('/regions/summaries');
      final items = decodeListResponse(response.body, Region.fromJson);
      return Result.success(items);
    } catch (e) {
      //TODO
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<Region, ApiError>> getRegion(String regionId) async {
    try {
      final response = await dataSource.get('/regions/$regionId');
      final item = decodeResponse(response.body, Region.fromJson);
      return Result.success(item);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<String, ApiError>> putRegion(
    Region region,
    String accessToken,
  ) async {
    final body = encodeToJson(region, (item) => item.toJson());
    try {
      final response = await dataSource.post(
        '/regions',
        body,
        accessToken: accessToken,
      );
      return Result.success(response.body);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<List<PublicDistrict>, ApiError>> getDistricts(
    String regionId,
  ) async {
    try {
      final response = await dataSource.get('/districts/$regionId');
      final items = decodeListResponse(response.body, PublicDistrict.fromJson);
      return Result.success(items);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<PublicDistrict, ApiError>> getDistrict(
    String districtId,
  ) async {
    try {
      final response = await dataSource.get('/districts/$districtId');
      final item = decodeResponse(response.body, PublicDistrict.fromJson);
      return Result.success(item);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<String, ApiError>> putDistrict(
    District district,
    String accessToken,
  ) async {
    final body = encodeToJson(district, (item) => item.toJson());
    try {
      final response = await dataSource.post(
        '/districts/${district.id}',
        body,
        accessToken: accessToken,
      );
      return Result.success(response.body);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<List<RouteSummary>, ApiError>> getRoutes(
    String districtId,
  ) async {
    try {
      final response = await dataSource.get('/routes/$districtId');
      final items = decodeListResponse(response.body, RouteSummary.fromJson);
      return Result.success(items);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<PublicRoute, ApiError>> getRoute(
    String districtId,
    SimpleDate date,
    String title,
  ) async {
    late final Map<String, String> queryParameters;

    queryParameters = {
      'year': date.year.toString(),
      'month': date.month.toString(),
      'day': date.day.toString(),
      'title': title,
    };
    try {
      final response = await dataSource.get(
        '/regions/$districtId/routes',
        queryParameters: queryParameters,
      );
      final item = decodeResponse(response.body, PublicRoute.fromJson);
      return Result.success(item);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<PublicRoute, ApiError>> getCurrentRoute(
    String districtId,
  ) async {
    try {
      final response = await dataSource.get('/regions/$districtId/routes');
      final item = decodeResponse(response.body, PublicRoute.fromJson);
      return Result.success(item);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<String, ApiError>> postRoute(
    Route route,
    String accessToken,
  ) async {
    final body = encodeToJson(route, (item) => item.toJson());
    try {
      final response = await dataSource.post(
        '/districts/${route.districtId}/routes',
        body,
        accessToken: accessToken,
      );
      return Result.success(response.body);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<String, ApiError>> putRoute(
    Route route,
    String accessToken,
  ) async {
    final body = encodeToJson(route, (item) => item.toJson());
    try {
      final response = await dataSource.post(
        '/districts/${route.districtId}/routes',
        //TODO
        body,
        accessToken: accessToken,
      );
      return Result.success(response.body);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<String, ApiError>> deleteRoute(
    String districtId,
    SimpleDate date,
    String title,
    String accessToken,
  ) async {
    late final Map<String, String> queryParameters;
    queryParameters = {
      'districtId': districtId,
      'year': date.year.toString(),
      'month': date.month.toString(),
      'day': date.day.toString(),
      'title': title,
    };
    try {
      final response = await dataSource.delete(
        '/routes',
        queryParameters: queryParameters,
      );
      return Result.success(response.body);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<PublicLocation, ApiError>> getLocation(
    String districtId,
  ) async {
    try {
      final response = await dataSource.get('/districts/$districtId/location');
      final item = decodeResponse(response.body, PublicLocation.fromJson);
      return Result.success(item);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<String, ApiError>> putLocation(
    Location location,
    String accessToken,
  ) async {
    final body = encodeToJson(location, (item) => item.toJson());
    try {
      final response = await dataSource.post(
        '/districts/${location.districtId}/locations',
        body,
      );
      return Result.success(response.body);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<String, ApiError>> deleteLocation(
    String districtId,
    String accessToken,
  ) async {
    try {
      final response = await dataSource.delete(
        '/districts/$districtId/locations',
      );
      return Result.success(response.body);
    } catch (e) {
      return Result.failure(ApiError.unknown('Unknown'));
    }
  }

  @override
  Future<Result<List<Coordinate>, ApiError>> getSegmentCoordinate(
    Coordinate start,
    Coordinate end,
  ) {
    // TODO: implement getSegmentCoordinate
    throw UnimplementedError();
  }
}
