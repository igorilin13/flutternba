import 'package:rxdart/rxdart.dart';

extension FutureExtensions<T> on Future<T> {
  Stream<T?> asLoadingStream() {
    return asNullableStream().startWith(null);
  }

  Stream<T?> asNullableStream() {
    return asStream();
  }
}

extension StreamExtensions<T> on Stream<T> {
  Stream<T?> asLoadingStream() {
    return nullable().startWith(null);
  }

  Stream<T?> nullable() {
    return this;
  }
}
