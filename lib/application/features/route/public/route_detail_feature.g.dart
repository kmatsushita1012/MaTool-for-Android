// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_detail_feature.dart';

// **************************************************************************
// KeyPathGenerator
// **************************************************************************

extension RouteDetailStatePath on RouteDetailState {
  static final item =
      WritableKeyPath<RouteDetailState, AsyncValue<PublicRoute>>(
        get: (obj) => obj.item,
        set: (obj, item) => obj!.copyWith(item: item),
      );
}

// **************************************************************************
// CaseKeyPathGenerator
// **************************************************************************

extension RouteDetailActionEnum on RouteDetailAction {
  static RouteDetailAction loaded(String p) => RouteDetailActionLoaded(p);
  static RouteDetailAction received(Result<PublicRoute, ApiError> p) =>
      RouteDetailActionReceived(p);
}

final class RouteDetailActionLoaded<
  A extends String,
  B extends Result<PublicRoute, ApiError>
>
    extends RouteDetailAction<A, B> {
  final A loaded;
  RouteDetailActionLoaded(this.loaded) : super();

  @override
  int get hashCode => loaded.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is RouteDetailActionLoaded && other.loaded == loaded;

  @override
  String toString() {
    return "RouteDetailActionLoaded.$loaded";
  }
}

final class RouteDetailActionReceived<
  A extends String,
  B extends Result<PublicRoute, ApiError>
>
    extends RouteDetailAction<A, B> {
  final B received;
  RouteDetailActionReceived(this.received) : super();

  @override
  int get hashCode => received.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is RouteDetailActionReceived && other.received == received;

  @override
  String toString() {
    return "RouteDetailActionReceived.$received";
  }
}

extension RouteDetailActionPath on RouteDetailAction {
  static final loaded = WritableKeyPath<RouteDetailAction, String?>(
    get: (action) {
      if (action is RouteDetailActionLoaded) {
        return action.loaded;
      }
      return null;
    },
    set: (rootAction, propAction) {
      if (propAction != null) {
        rootAction = RouteDetailActionEnum.loaded(propAction);
      }
      return rootAction!;
    },
  );
  static final received =
      WritableKeyPath<RouteDetailAction, Result<PublicRoute, ApiError>?>(
        get: (action) {
          if (action is RouteDetailActionReceived) {
            return action.received;
          }
          return null;
        },
        set: (rootAction, propAction) {
          if (propAction != null) {
            rootAction = RouteDetailActionEnum.received(propAction);
          }
          return rootAction!;
        },
      );
}
