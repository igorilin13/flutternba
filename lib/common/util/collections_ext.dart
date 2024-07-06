import 'package:collection/collection.dart';

extension ListExtensions<E> on List<E> {
  E? getOrNull(int index) {
    if (index >= 0 && index < length) {
      return this[index];
    } else {
      return null;
    }
  }

  void sortByDescending<T extends Comparable>(T Function(E item) selector) {
    sort((a, b) => selector(b).compareTo(selector(a)));
  }
}

extension IterableExtensions<E> on Iterable<E> {
  List<T> mapList<T>(T Function(E item) toElement, {bool growable = false}) {
    return map(toElement).toList(growable: growable);
  }

  List<E> filterList(bool Function(E item) toElement, {bool growable = false}) {
    return where(toElement).toList(growable: growable);
  }

  List<E> takeList(int count, {bool growable = false}) {
    return take(count).toList(growable: growable);
  }

  List<E> sortedByDescending<T extends Comparable>(
    T Function(E item) selector,
  ) {
    return sortedByCompare(selector, (a, b) => b.compareTo(a));
  }

  Map<E, V> associateWith<V>(V Function(E item) valueTransform) {
    return associateBy(
      keySelector: (item) => item,
      valueTransform: valueTransform,
    );
  }

  Map<K, E> associateValuesBy<K>(K Function(E item) keyOf) {
    return associateBy(
      keySelector: keyOf,
      valueTransform: (item) => item,
    );
  }

  Map<K, V> associateBy<K, V>({
    required K Function(E item) keySelector,
    required V Function(E item) valueTransform,
  }) {
    final Map<K, V> map = {};
    for (var item in this) {
      map[keySelector(item)] = valueTransform(item);
    }
    return map;
  }
}
