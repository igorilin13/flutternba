import 'package:flutternba/common/util/date_ext.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:intl/intl.dart';

class FormatGameTimeUseCase {
  final hourOnlyFormat = DateFormat("h a");
  final hourMinutesFormat = DateFormat("h:mm a");
  final dateFormat = DateFormat("EEE, MMM d");

  String call(DateTime utcGameTime) {
    final gameTime = utcGameTime.toLocal();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final gameDay = DateTime(gameTime.year, gameTime.month, gameTime.day);

    final timeFormatter =
        gameTime.minute == 0 ? hourOnlyFormat : hourMinutesFormat;

    if (gameDay.isYesterday) {
      return UiStrings.yesterday;
    } else if (gameDay.isBefore(today)) {
      return dateFormat.format(gameTime);
    } else if (gameDay.isSameDayAs(today)) {
      return UiStrings.todayTimeFormat(timeFormatter.format(gameTime));
    } else if (gameDay.isTomorrow) {
      return UiStrings.tomorrowTimeFormat(timeFormatter.format(gameTime));
    } else {
      return "${dateFormat.format(gameTime)}, ${timeFormatter.format(gameTime)}";
    }
  }
}
