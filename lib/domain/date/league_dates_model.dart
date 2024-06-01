import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_dates_model.freezed.dart';

@freezed
class LeagueDatesModel with _$LeagueDatesModel {
  const factory LeagueDatesModel({
    required DateTime selectedDate,
    required String formattedDate,
    required DateTime minDate,
    required DateTime maxDate,
  }) = _LeagueDatesModel;
}
