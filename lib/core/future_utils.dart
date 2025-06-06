sealed class Result<T, E> {
  factory Result.success(T value) = Success;
  factory Result.failure(E value) = Failure;
  // `when` メソッドの追加
  R when<R>({
    required R Function(T value) onSuccess,
    required R Function(E error) onError,
  });
}

class Success<T, E> implements Result<T, E> {
  const Success(this.value);
  final T value;
  @override
  R when<R>({
    required R Function(T value) onSuccess,
    required R Function(E error) onError,
  }) {
    return onSuccess(value); // `AsyncData` の場合は `data` コールバックを呼び出す
  }
}

class Failure<T, E> implements Result<T, E> {
  const Failure(this.error);
  final E error;
  @override
  R when<R>({
    required R Function(T value) onSuccess,
    required R Function(E error) onError,
  }) {
    return onError(this.error); // `AsyncError` の場合は `error` コールバックを呼び出す
  }
}

class Void {
  const Void();
}
