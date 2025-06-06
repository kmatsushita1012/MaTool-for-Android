// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_detail_feature.dart';

// **************************************************************************
// KeyPathGenerator
// **************************************************************************

extension RegionDetailStatePath on RegionDetailState {
  static final item = WritableKeyPath<RegionDetailState, AsyncValue<Region>>(
    get: (obj) => obj.item,
    set: (obj, item) => obj!.copyWith(item: item),
  );
}

// **************************************************************************
// CaseKeyPathGenerator
// **************************************************************************

extension RegionDetailActionEnum on RegionDetailAction {
  static RegionDetailAction received(Result<Region, ApiError> p) =>
      RegionDetailActionReceived(p);
}

final class RegionDetailActionReceived<A extends Result<Region, ApiError>>
    extends RegionDetailAction<A> {
  final A received;
  RegionDetailActionReceived(this.received) : super();

  @override
  int get hashCode => received.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is RegionDetailActionReceived && other.received == received;

  @override
  String toString() {
    return "RegionDetailActionReceived.$received";
  }
}

extension RegionDetailActionPath on RegionDetailAction {
  static final received =
      WritableKeyPath<RegionDetailAction, Result<Region, ApiError>?>(
        get: (action) {
          if (action is RegionDetailActionReceived) {
            return action.received;
          }
          return null;
        },
        set: (rootAction, propAction) {
          if (propAction != null) {
            rootAction = RegionDetailActionEnum.received(propAction);
          }
          return rootAction!;
        },
      );
}
