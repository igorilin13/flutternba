sealed class Result<T> {
  const Result();

  bool get isSuccess => this is Success;
  bool get isFailure => this is Failure;

  factory Result.success(T value) {
    return Success(value);
  }

  factory Result.failure(Object error) {
    return Failure(error);
  }

  Result<R> map<R>(R Function(T value) transform) {
    switch (this) {
      case Success<T> success:
        return runCatching(() => transform(success.value));
      case Failure<T> failure:
        return Result.failure(failure.error);
    }
  }

  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Object error) onFailure,
  }) {
    switch (this) {
      case Success<T> success:
        return onSuccess(success.value);
      case Failure<T> failure:
        return onFailure(failure.error);
    }
  }

  Result<T> onSuccess(void Function(T value) action) {
    switch (this) {
      case Success<T> success:
        action(success.value);
      case Failure<T>():
        break;
    }

    return this;
  }

  Result<T> onFailure(void Function(Object error) action) {
    switch (this) {
      case Success<T>():
        break;
      case Failure<T> failure:
        action(failure.error);
    }

    return this;
  }
}

final class Success<T> extends Result<T> {
  final T value;

  const Success(this.value);
}

final class Failure<T> extends Result<T> {
  final Object error;

  const Failure(this.error);
}

Future<Result<T>> runCatchingAsync<T>(Future<T> Function() block) async {
  try {
    return Result.success(await block());
  } catch (e) {
    return Result.failure(e);
  }
}

Result<T> runCatching<T>(T Function() block) {
  try {
    return Result.success(block());
  } catch (e) {
    return Result.failure(e);
  }
}
