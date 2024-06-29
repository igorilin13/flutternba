extension StringExt on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }

  String first() {
    if (isEmpty) {
      return this;
    }
    return this[0];
  }
}
