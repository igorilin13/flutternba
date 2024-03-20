extension ListExtension<E> on List<E> {
  List<T> mapList<T>(T Function(E item) toElement, {bool growable = false}) {
    return map(toElement).toList(growable: growable);
  }

  List<E> filterList(bool Function(E item) toElement, {bool growable = false}) {
    return where(toElement).toList(growable: growable);
  }

  List<E> takeList(int count, {bool growable = false}) {
    return take(count).toList(growable: growable);
  }

  E? getOrNull(int index) {
    if (index >= 0 && index < length) {
      return this[index];
    } else {
      return null;
    }
  }

  void sortBy<T extends Comparable>(T Function(E item) selector) {
    sort((a, b) => selector(a).compareTo(selector(b)));
  }

  void sortByDescending<T extends Comparable>(T Function(E item) selector) {
    sort((a, b) => selector(b).compareTo(selector(a)));
  }
}
