// ignore_for_file: strict_raw_type

import 'package:composable_architecture/composable_architecture.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';
import 'package:matool2/domain/entities/entities.dart';

import 'package:riverpod/riverpod.dart';

part 'region_summaries_feature.freezed.dart';
part 'region_summaries_feature.g.dart';

@freezed
@KeyPathable()
class RegionSummariesState with _$RegionSummariesState {
  RegionSummariesState({this.items = const AsyncLoading()});
  @override
  AsyncValue<List<Region>> items;
}

@CaseKeyPathable()
sealed class RegionSummariesAction<
  Received extends Result<List<Region>, ApiError>,
  Selected
> {}

class RegionSummariesFeature
    extends Feature<RegionSummariesState, RegionSummariesAction> {
  RegionSummariesFeature({required this.repository});

  final ApiRepository repository;

  @override
  Reducer<RegionSummariesState, RegionSummariesAction> build() => Reduce((
    state,
    action,
  ) {
    switch (action) {
      case RegionSummariesActionReceived():
        action.received.when(
          onSuccess:
              (value) =>
                  state.mutate((s) => s.copyWith(items: AsyncData(value))),
          onError:
              (error) => state.mutate(
                (s) => s.copyWith(
                  items: AsyncError(
                    error ?? Exception('Unknown error'),
                    StackTrace.current,
                  ),
                ),
              ),
        );
        return Effect.none();
      case RegionSummariesActionSelected():
        // state.mutate((s) => s.copyWith(districtPage: DistrictState(id: id)));
        return Effect.none();
    }
  });
}
