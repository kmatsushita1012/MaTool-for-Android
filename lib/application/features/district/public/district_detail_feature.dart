import 'package:composable_architecture/composable_architecture.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/interfaces/repository/api_repository.dart';
import 'package:matool2/domain/entities/district/district.dart';
import 'package:riverpod/riverpod.dart';

part 'district_detail_feature.freezed.dart';
part 'district_detail_feature.g.dart';

@freezed
@KeyPathable()
class DistrictDetailState with _$DistrictDetailState {
  DistrictDetailState({this.item = const AsyncLoading()});
  @override
  AsyncValue<District> item;
}

@CaseKeyPathable()
sealed class DistrictDetailAction<
  Received extends Result<District, ApiError>
> {}

class DistrictDetailFeature
    extends Feature<DistrictDetailState, DistrictDetailAction> {
  DistrictDetailFeature({required this.repository});

  final ApiRepository repository;

  @override
  Reducer<DistrictDetailState, DistrictDetailAction> build() => Reduce((
    state,
    action,
  ) {
    switch (action) {
      case DistrictDetailActionReceived():
        action.received.when(
          onSuccess:
              (value) =>
                  state.mutate((s) => s.copyWith(item: AsyncValue.data(value))),
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
