// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_summaries_feature.dart';

// **************************************************************************
// KeyPathGenerator
// **************************************************************************

extension RouteSummariesStatePath on RouteSummariesState {
  static final items =
      WritableKeyPath<RouteSummariesState, AsyncValue<List<RouteSummary>>>(
        get: (obj) => obj.items,
        set: (obj, items) => obj!.copyWith(items: items),
      );
}

// **************************************************************************
// CaseKeyPathGenerator
// **************************************************************************

extension RouteSummariesActionEnum on RouteSummariesAction {
  static RouteSummariesAction loaded(String p) => RouteSummariesActionLoaded(p);
  static RouteSummariesAction received(
    Result<List<RouteSummary>, ApiError> p,
  ) => RouteSummariesActionReceived(p);
  static RouteSummariesAction selected() => RouteSummariesActionSelected();
}

final class RouteSummariesActionLoaded<
  A extends String,
  B extends Result<List<RouteSummary>, ApiError>,
  C
>
    extends RouteSummariesAction<A, B, C> {
  final A loaded;
  RouteSummariesActionLoaded(this.loaded) : super();

  @override
  int get hashCode => loaded.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is RouteSummariesActionLoaded && other.loaded == loaded;

  @override
  String toString() {
    return "RouteSummariesActionLoaded.$loaded";
  }
}

final class RouteSummariesActionReceived<
  A extends String,
  B extends Result<List<RouteSummary>, ApiError>,
  C
>
    extends RouteSummariesAction<A, B, C> {
  final B received;
  RouteSummariesActionReceived(this.received) : super();

  @override
  int get hashCode => received.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is RouteSummariesActionReceived && other.received == received;

  @override
  String toString() {
    return "RouteSummariesActionReceived.$received";
  }
}

final class RouteSummariesActionSelected<
  A extends String,
  B extends Result<List<RouteSummary>, ApiError>,
  C
>
    extends RouteSummariesAction<A, B, C> {
  RouteSummariesActionSelected() : super();

  @override
  int get hashCode => runtimeType.hashCode ^ 31;

  @override
  bool operator ==(Object other) => other is RouteSummariesActionSelected;

  @override
  String toString() {
    return "RouteSummariesActionSelected()";
  }
}

extension RouteSummariesActionPath on RouteSummariesAction {
  static final loaded = WritableKeyPath<RouteSummariesAction, String?>(
    get: (action) {
      if (action is RouteSummariesActionLoaded) {
        return action.loaded;
      }
      return null;
    },
    set: (rootAction, propAction) {
      if (propAction != null) {
        rootAction = RouteSummariesActionEnum.loaded(propAction);
      }
      return rootAction!;
    },
  );
  static final received = WritableKeyPath<
    RouteSummariesAction,
    Result<List<RouteSummary>, ApiError>?
  >(
    get: (action) {
      if (action is RouteSummariesActionReceived) {
        return action.received;
      }
      return null;
    },
    set: (rootAction, propAction) {
      if (propAction != null) {
        rootAction = RouteSummariesActionEnum.received(propAction);
      }
      return rootAction!;
    },
  );
  static final selected =
      WritableKeyPath<RouteSummariesAction, RouteSummariesActionSelected?>(
        get: (action) {
          if (action is RouteSummariesActionSelected) {
            return action;
          }
          return null;
        },
        set: (rootAction, propAction) {
          if (propAction != null) {
            rootAction = RouteSummariesActionEnum.selected();
          }
          return rootAction!;
        },
      );
}
