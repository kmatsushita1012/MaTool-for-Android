import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:matool2/domain/entities/entities.dart';
import 'package:matool2/domain/interfaces/repository/location_client.dart';
import 'package:riverpod/riverpod.dart';

class LocationClientLive implements LocationClient {
  LocationClientLive() {
    _locationController.add(const AsyncValue.loading());
  }

  LocationClientLive._internal() {
    _locationController.stream.listen((value) {
      _latestValue = value;
    });
  }

  factory LocationClientLive.instance() => _instance;
  StreamSubscription<Position>? _positionSubscription;
  final _locationController =
      StreamController<AsyncValue<Coordinate>>.broadcast();
  bool _tracking = false;

  @override
  Future<void> startTracking() async {
    if (_tracking) {
      return;
    }

    final permission = await _handlePermission();
    if (!permission) {
      _locationController.add(
        AsyncValue.error('位置情報の権限がありません', StackTrace.current),
      );
      return;
    }

    _tracking = true;

    _positionSubscription = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10, // 10メートル動いたら更新
      ),
    ).listen(
      (position) {
        final coordinate = Coordinate(
          latitude: position.latitude,
          longitude: position.longitude,
        );
        _locationController.add(AsyncValue.data(coordinate));
      },
      // ignore: inference_failure_on_untyped_parameter
      onError: (error) {
        _locationController.add(
          AsyncValue.error(error as Object, StackTrace.current),
        );
      },
    );
  }

  @override
  void stopTracking() {
    _positionSubscription?.cancel();
    _tracking = false;
  }

  @override
  bool isTracking() => _tracking;

  @override
  AsyncValue<Coordinate> getLocation() {
    return _latestValue;
  }

  AsyncValue<Coordinate> _latestValue = const AsyncValue.loading();

  static final _instance = LocationClientLive._internal();

  Future<bool> _handlePermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }
}
