import 'package:flutternba/data/standings/remote/standings_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings_model.freezed.dart';

@freezed
class TeamStandings with _$TeamStandings {
  const factory TeamStandings({
    required int teamId,
    required String conferenceName,
    required TeamRank conferenceRank,
    required String divisionName,
    required TeamRank divisionRank,
    required WinLossRecord overallRecord,
    required WinLossRecord homeRecord,
    required WinLossRecord awayRecord,
    required WinLossRecord lastTenRecord,
    required int streak,
    required bool winStreak,
  }) = _TeamStandings;

  factory TeamStandings.fromResponse(StandingsResponse response) {
    return TeamStandings(
      teamId: response.team.id,
      conferenceName: response.conference.conferenceName,
      conferenceRank: TeamRank(
        rank: response.conference.rank,
        gamesBehind: response.gamesBehind,
      ),
      divisionName: response.division.divisionName,
      divisionRank: TeamRank(
        rank: response.division.rank,
        gamesBehind: response.division.gamesBehind,
      ),
      overallRecord: WinLossRecord(
        wins: response.win.total,
        losses: response.loss.total,
      ),
      homeRecord: WinLossRecord(
        wins: response.win.home,
        losses: response.loss.home,
      ),
      awayRecord: WinLossRecord(
        wins: response.win.away,
        losses: response.loss.away,
      ),
      lastTenRecord: WinLossRecord(
        wins: response.win.lastTen,
        losses: response.loss.lastTen,
      ),
      streak: response.streak,
      winStreak: response.winStreak,
    );
  }
}

@freezed
class TeamRank with _$TeamRank {
  const factory TeamRank({
    required int rank,
    required String? gamesBehind,
  }) = _TeamRank;
}

@freezed
class WinLossRecord with _$WinLossRecord {
  const factory WinLossRecord({
    required int wins,
    required int losses,
  }) = _WinLossRecord;
}
