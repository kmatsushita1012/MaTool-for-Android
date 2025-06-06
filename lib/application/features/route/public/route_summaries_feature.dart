// ignore_for_file: strict_raw_type

import 'package:composable_architecture/composable_architecture.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';
import 'package:matool2/domain/entities/entities.dart';

import 'package:riverpod/riverpod.dart';

part 'route_summaries_feature.freezed.dart';
part 'route_summaries_feature.g.dart';

@freezed
@KeyPathable()
class RouteSummariesState with _$RouteSummariesState {
  RouteSummariesState({this.items = const AsyncLoading()});
  @override
  AsyncValue<List<RouteSummary>> items;
}

@CaseKeyPathable()
sealed class RouteSummariesAction<
  Loaded extends String,
  Received extends Result<List<RouteSummary>, ApiError>,
  Selected
> {}

class RouteSummariesFeature
    extends Feature<RouteSummariesState, RouteSummariesAction> {
  RouteSummariesFeature({required this.repository});

  final ApiRepository repository;

  @override
  Reducer<RouteSummariesState, RouteSummariesAction> build() => Reduce((
    state,
    action,
  ) {
    switch (action) {
      case RouteSummariesActionLoaded():
        final regionId = action.loaded;
        return Effect.future(() async {
          final result = await repository.getRoutes(regionId);
          return RouteSummariesActionReceived(result);
        });
      case RouteSummariesActionReceived():
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
      case RouteSummariesActionSelected():
        // state.mutate((s) => s.copyWith(districtPage: DistrictState(id: id)));
        return Effect.none();
    }
  });
}
