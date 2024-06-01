import 'package:flutternba/common/util/date_ext.dart';
import 'package:flutternba/domain/date/league_dates_model.dart';
import 'package:intl/intl.dart';

import '../../ui/util/strings.dart';

class GetLeagueDatesUseCase {
  final dateFormat = DateFormat("MMMM d");

  LeagueDatesModel call(DateTime selectedDate) {
    String formattedDate;

    if (selectedDate.isYesterday) {
      formattedDate = UiStrings.yesterday;
    } else if (selectedDate.isToday) {
      formattedDate = UiStrings.today;
    } else if (selectedDate.isTomorrow) {
      formattedDate = UiStrings.tomorrow;
    } else {
      formattedDate = dateFormat.format(selectedDate);
    }

    DateTime minDate;
    DateTime maxDate;
    final today = DateTime.now();
    if (today.month >= DateTime.august) {
      minDate = DateTime(today.year, DateTime.august, 1);
      maxDate = DateTime(today.year + 1, DateTime.july, 31);
    } else {
      minDate = DateTime(today.year - 1, DateTime.august, 1);
      maxDate = DateTime(today.year, DateTime.july, 31);
    }

    return LeagueDatesModel(
      selectedDate: selectedDate,
      formattedDate: formattedDate,
      minDate: minDate,
      maxDate: maxDate,
    );
  }
}
