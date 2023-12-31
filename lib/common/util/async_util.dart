import 'package:flutternba/common/util/result.dart';

extension FutureExtension<T> on Future<Result<T>> {
  Future<Result<R>> mapResult<R>(R Function(T) transform) async {
    return (await this).map(transform);
  }
}
