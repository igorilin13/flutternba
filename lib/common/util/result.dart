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

  Result<R> map<R>(R Function(T) transform) {
    switch (this) {
      case Success<T> success:
        return Result.success(transform(success.value));
      case Failure<T> failure:
        return Result.failure(failure.error);
    }
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

Future<Result<T>> runCatching<T>(Future<T> Function() block) async {
  try {
    return Result.success(await block());
  } catch (e) {
    return Result.failure(e);
  }
}
