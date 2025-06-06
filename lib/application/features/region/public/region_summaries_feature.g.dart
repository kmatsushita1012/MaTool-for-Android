// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_summaries_feature.dart';

// **************************************************************************
// KeyPathGenerator
// **************************************************************************

extension RegionSummariesStatePath on RegionSummariesState {
  static final items =
      WritableKeyPath<RegionSummariesState, AsyncValue<List<Region>>>(
        get: (obj) => obj.items,
        set: (obj, items) => obj!.copyWith(items: items),
      );
}

// **************************************************************************
// CaseKeyPathGenerator
// **************************************************************************

extension RegionSummariesActionEnum on RegionSummariesAction {
  static RegionSummariesAction received(Result<List<Region>, ApiError> p) =>
      RegionSummariesActionReceived(p);
  static RegionSummariesAction selected() => RegionSummariesActionSelected();
}

final class RegionSummariesActionReceived<
  A extends Result<List<Region>, ApiError>,
  B
>
    extends RegionSummariesAction<A, B> {
  final A received;
  RegionSummariesActionReceived(this.received) : super();

  @override
  int get hashCode => received.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is RegionSummariesActionReceived && other.received == received;

  @override
  String toString() {
    return "RegionSummariesActionReceived.$received";
  }
}

final class RegionSummariesActionSelected<
  A extends Result<List<Region>, ApiError>,
  B
>
    extends RegionSummariesAction<A, B> {
  RegionSummariesActionSelected() : super();

  @override
  int get hashCode => runtimeType.hashCode ^ 31;

  @override
  bool operator ==(Object other) => other is RegionSummariesActionSelected;

  @override
  String toString() {
    return "RegionSummariesActionSelected()";
  }
}

extension RegionSummariesActionPath on RegionSummariesAction {
  static final received =
      WritableKeyPath<RegionSummariesAction, Result<List<Region>, ApiError>?>(
        get: (action) {
          if (action is RegionSummariesActionReceived) {
            return action.received;
          }
          return null;
        },
        set: (rootAction, propAction) {
          if (propAction != null) {
            rootAction = RegionSummariesActionEnum.received(propAction);
          }
          return rootAction!;
        },
      );
  static final selected =
      WritableKeyPath<RegionSummariesAction, RegionSummariesActionSelected?>(
        get: (action) {
          if (action is RegionSummariesActionSelected) {
            return action;
          }
          return null;
        },
        set: (rootAction, propAction) {
          if (propAction != null) {
            rootAction = RegionSummariesActionEnum.selected();
          }
          return rootAction!;
        },
      );
}
