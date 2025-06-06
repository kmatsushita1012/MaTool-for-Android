// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_summaries_feature.dart';

// **************************************************************************
// KeyPathGenerator
// **************************************************************************

extension DistrictSummariesStatePath on DistrictSummariesState {
  static final items = WritableKeyPath<
    DistrictSummariesState,
    AsyncValue<List<DistrictSummary>>
  >(get: (obj) => obj.items, set: (obj, items) => obj!.copyWith(items: items));
}

// **************************************************************************
// CaseKeyPathGenerator
// **************************************************************************

extension DistrictSummariesActionEnum on DistrictSummariesAction {
  static DistrictSummariesAction received(
    Result<List<DistrictSummary>, ApiError> p,
  ) => DistrictSummariesActionReceived(p);
  static DistrictSummariesAction selected() =>
      DistrictSummariesActionSelected();
}

final class DistrictSummariesActionReceived<
  A extends Result<List<DistrictSummary>, ApiError>,
  B
>
    extends DistrictSummariesAction<A, B> {
  final A received;
  DistrictSummariesActionReceived(this.received) : super();

  @override
  int get hashCode => received.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is DistrictSummariesActionReceived && other.received == received;

  @override
  String toString() {
    return "DistrictSummariesActionReceived.$received";
  }
}

final class DistrictSummariesActionSelected<
  A extends Result<List<DistrictSummary>, ApiError>,
  B
>
    extends DistrictSummariesAction<A, B> {
  DistrictSummariesActionSelected() : super();

  @override
  int get hashCode => runtimeType.hashCode ^ 31;

  @override
  bool operator ==(Object other) => other is DistrictSummariesActionSelected;

  @override
  String toString() {
    return "DistrictSummariesActionSelected()";
  }
}

extension DistrictSummariesActionPath on DistrictSummariesAction {
  static final received = WritableKeyPath<
    DistrictSummariesAction,
    Result<List<DistrictSummary>, ApiError>?
  >(
    get: (action) {
      if (action is DistrictSummariesActionReceived) {
        return action.received;
      }
      return null;
    },
    set: (rootAction, propAction) {
      if (propAction != null) {
        rootAction = DistrictSummariesActionEnum.received(propAction);
      }
      return rootAction!;
    },
  );
  static final selected = WritableKeyPath<
    DistrictSummariesAction,
    DistrictSummariesActionSelected?
  >(
    get: (action) {
      if (action is DistrictSummariesActionSelected) {
        return action;
      }
      return null;
    },
    set: (rootAction, propAction) {
      if (propAction != null) {
        rootAction = DistrictSummariesActionEnum.selected();
      }
      return rootAction!;
    },
  );
}
