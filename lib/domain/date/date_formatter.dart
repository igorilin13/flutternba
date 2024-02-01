import 'package:flutternba/common/util/date.dart';
import 'package:flutternba/ui/util/strings.dart';
import 'package:intl/intl.dart';

class FormatGameDateUseCase {
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
      return UiStrings.todayFormat(timeFormatter.format(gameTime));
    } else if (gameDay.isTomorrow) {
      return UiStrings.tomorrowFormat(timeFormatter.format(gameTime));
    } else {
      return "${dateFormat.format(gameTime)}, ${timeFormatter.format(gameTime)}";
    }
  }
}
