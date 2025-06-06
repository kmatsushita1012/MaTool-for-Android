// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_detail_feature.dart';

// **************************************************************************
// KeyPathGenerator
// **************************************************************************

extension DistrictDetailStatePath on DistrictDetailState {
  static final item =
      WritableKeyPath<DistrictDetailState, AsyncValue<District>>(
        get: (obj) => obj.item,
        set: (obj, item) => obj!.copyWith(item: item),
      );
}

// **************************************************************************
// CaseKeyPathGenerator
// **************************************************************************

extension DistrictDetailActionEnum on DistrictDetailAction {
  static DistrictDetailAction received(Result<District, ApiError> p) =>
      DistrictDetailActionReceived(p);
}

final class DistrictDetailActionReceived<A extends Result<District, ApiError>>
    extends DistrictDetailAction<A> {
  final A received;
  DistrictDetailActionReceived(this.received) : super();

  @override
  int get hashCode => received.hashCode ^ 31;

  @override
  bool operator ==(Object other) =>
      other is DistrictDetailActionReceived && other.received == received;

  @override
  String toString() {
    return "DistrictDetailActionReceived.$received";
  }
}

extension DistrictDetailActionPath on DistrictDetailAction {
  static final received =
      WritableKeyPath<DistrictDetailAction, Result<District, ApiError>?>(
        get: (action) {
          if (action is DistrictDetailActionReceived) {
            return action.received;
          }
          return null;
        },
        set: (rootAction, propAction) {
          if (propAction != null) {
            rootAction = DistrictDetailActionEnum.received(propAction);
          }
          return rootAction!;
        },
      );
}
