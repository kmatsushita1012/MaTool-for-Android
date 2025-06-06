// ignore_for_file: strict_raw_type

import 'package:composable_architecture/composable_architecture.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';
import 'package:matool2/domain/entities/entities.dart';

import 'package:riverpod/riverpod.dart';

part 'route_detail_feature.freezed.dart';
part 'route_detail_feature.g.dart';

@freezed
@KeyPathable()
class RouteDetailState with _$RouteDetailState {
  RouteDetailState({this.item = const AsyncLoading()});
  @override
  AsyncValue<PublicRoute> item;
}

@CaseKeyPathable()
sealed class RouteDetailAction<
  Loaded extends String,
  Received extends Result<PublicRoute, ApiError>
> {}

class RouteFeature extends Feature<RouteDetailState, RouteDetailAction> {
  RouteFeature({required this.repository});

  final ApiRepository repository;

  @override
  Reducer<RouteDetailState, RouteDetailAction> build() =>
      Reduce((state, action) {
        switch (action) {
          case RouteDetailActionLoaded():
            final regionId = action.loaded;
            return Effect.future(() async {
              final result = await repository.getCurrentRoute(regionId);
              return RouteDetailActionReceived(result);
            });
          case RouteDetailActionReceived():
            action.received.when(
              onSuccess:
                  (value) =>
                      state.mutate((s) => s.copyWith(item: AsyncData(value))),
              onError:
                  (error) => state.mutate(
                    (s) => s.copyWith(
                      item: AsyncValue.error(
                        error ?? Exception('Unknown error'),
                        StackTrace.current,
                      ),
                    ),
                  ),
            );
            return Effect.none();
        }
      });
}
