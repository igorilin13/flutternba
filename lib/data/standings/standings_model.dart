import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings_model.freezed.dart';
part 'standings_model.g.dart';

@freezed
class TeamStandings with _$TeamStandings {
  const factory TeamStandings({
    required int id,
    required String teamName,
    required String fullTeamName,
    required TeamRank conference,
    required TeamRank division,
    required WinLossRecord overall,
    required WinLossRecord home,
    required WinLossRecord away,
    required WinLossRecord lastTen,
    required int streak,
    required bool isWinStreak,
  }) = _TeamStandings;

  factory TeamStandings.fromJson(Map<String, dynamic> json) =>
      _$TeamStandingsFromJson(json);
}

@freezed
class TeamRank with _$TeamRank {
  const factory TeamRank({
    required int id,
    required String name,
    required int rank,
    required String? gamesBehind,
  }) = _TeamRank;

  factory TeamRank.fromJson(Map<String, dynamic> json) =>
      _$TeamRankFromJson(json);
}

@freezed
class WinLossRecord with _$WinLossRecord {
  const WinLossRecord._();

  const factory WinLossRecord({
    required int win,
    required int loss,
  }) = _WinLossRecord;

  factory WinLossRecord.fromJson(Map<String, dynamic> json) =>
      _$WinLossRecordFromJson(json);

  double get percentage {
    final total = win + loss;
    if (total == 0) {
      return 0;
    }
    return win / total;
  }
}
