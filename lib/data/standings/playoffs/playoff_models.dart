import 'package:freezed_annotation/freezed_annotation.dart';

part 'playoff_models.freezed.dart';
part 'playoff_models.g.dart';

@freezed
class PlayoffRound with _$PlayoffRound {
  const factory PlayoffRound({
    required int id,
    required List<PlayoffSeries> series,
  }) = _PlayoffRound;

  factory PlayoffRound.fromJson(Map<String, dynamic> json) =>
      _$PlayoffRoundFromJson(json);
}

@freezed
class PlayoffSeries with _$PlayoffSeries {
  const factory PlayoffSeries({
    required int conferenceId,
    required int homeTeamRank,
    required int homeTeamId,
    required String homeTeamName,
    required int homeTeamWins,
    required int awayTeamRank,
    required int awayTeamId,
    required String awayTeamName,
    required int awayTeamWins,
  }) = _PlayoffSeries;

  factory PlayoffSeries.fromJson(Map<String, dynamic> json) =>
      _$PlayoffSeriesFromJson(json);
}
