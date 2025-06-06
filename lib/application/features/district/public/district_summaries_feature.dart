// ignore_for_file: strict_raw_type

import 'package:composable_architecture/composable_architecture.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';
import 'package:matool2/domain/entities/district/district_summary.dart';
import 'package:riverpod/riverpod.dart';

part 'district_summaries_feature.freezed.dart';
part 'district_summaries_feature.g.dart';

@freezed
@KeyPathable()
class DistrictSummariesState with _$DistrictSummariesState {
  DistrictSummariesState({this.items = const AsyncLoading()});
  @override
  AsyncValue<List<DistrictSummary>> items;
}

@CaseKeyPathable()
sealed class DistrictSummariesAction<
  Received extends Result<List<DistrictSummary>, ApiError>,
  Selected
> {}

class DistrictSummariesFeature
    extends Feature<DistrictSummariesState, DistrictSummariesAction> {
  DistrictSummariesFeature({required this.repository});

  final ApiRepository repository;

  @override
  Reducer<DistrictSummariesState, DistrictSummariesAction> build() => Reduce((
    state,
    action,
  ) {
    switch (action) {
      case DistrictSummariesActionReceived():
        action.received.when(
          onSuccess:
              (value) => state.mutate(
                (s) => s.copyWith(items: AsyncValue.data(value)),
              ),
          onError:
              (error) => state.mutate(
                (s) => s.copyWith(
                  items: AsyncValue.error(
                    error ?? Exception('Unknown error'),
                    StackTrace.current,
                  ),
                ),
              ),
        );
        return Effect.none();
      case DistrictSummariesActionSelected():
        // state.mutate((s) => s.copyWith(districtPage: DistrictSummariesState(id: id)));
        return Effect.none();
    }
  });
}
