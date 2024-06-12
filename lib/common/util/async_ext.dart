import 'package:flutternba/common/util/result.dart';

extension FutureResultExtensions<T> on Future<Result<T>> {
  Future<Result<R>> mapResult<R>(R Function(T) transform) async {
    return (await this).mapValue(transform);
  }
}

extension FutureExtensions<T> on Future<T> {
  Stream<T?> asNullableStream() {
    return asStream();
  }
}

extension StreamExtensions<T> on Stream<T> {
  Stream<T?> nullable() {
    return this;
  }
}
