import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_data.freezed.dart';

@freezed
class PagedData<T, K> with _$PagedData<T, K> {
  const factory PagedData({
    required List<T> items,
    required K? nextKey,
  }) = _PagedData;
}
