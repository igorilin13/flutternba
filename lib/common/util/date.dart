extension DateTimeExtensions on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return isSameDayAs(now);
  }

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return isSameDayAs(tomorrow);
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return isSameDayAs(yesterday);
  }

  bool isSameDayAs(DateTime oth) {
    return oth.day == day &&
        oth.month == month &&
        oth.year == year;
  }
}