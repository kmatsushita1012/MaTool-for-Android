import 'package:matool2/domain/entities/entities.dart';
import 'package:matool2/domain/interfaces/repository/location_client.dart';
import 'package:riverpod/riverpod.dart';

class LocationClientMock extends LocationClient {
  bool _isTracking = false;
  @override
  void startTracking() {
    _isTracking = true;
    return;
  }

  @override
  AsyncValue<Coordinate> getLocation() {
    return AsyncData(Coordinate.sample);
  }

  @override
  bool isTracking() {
    return _isTracking;
  }

  @override
  void stopTracking() {
    _isTracking = false;
    return;
  }
}
