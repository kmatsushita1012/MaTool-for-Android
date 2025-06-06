import 'package:matool2/domain/entities/entities.dart';
import 'package:riverpod/riverpod.dart';

abstract class LocationClient {
  void startTracking();
  AsyncValue<Coordinate> getLocation();
  bool isTracking();
  void stopTracking();
}
