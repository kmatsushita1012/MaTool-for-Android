// ignore_for_file: strict_raw_type

import 'package:composable_architecture/composable_architecture.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';
import 'package:matool2/domain/entities/region/region.dart';
import 'package:riverpod/riverpod.dart';

part 'region_detail_feature.freezed.dart';
part 'region_detail_feature.g.dart';

@freezed
@KeyPathable()
class RegionDetailState with _$RegionDetailState {
  RegionDetailState({this.item = const AsyncLoading()});
  @override
  AsyncValue<Region> item;
}

@CaseKeyPathable()
sealed class RegionDetailAction<Received extends Result<Region, ApiError>> {}

class RegionFeature extends Feature<RegionDetailState, RegionDetailAction> {
  RegionFeature({required this.repository});

  final ApiRepository repository;

  @override
  Reducer<RegionDetailState, RegionDetailAction> build() =>
      Reduce((state, action) {
        switch (action) {
          case RegionDetailActionReceived():
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
