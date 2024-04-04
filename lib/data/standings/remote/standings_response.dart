import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings_response.freezed.dart';
part 'standings_response.g.dart';

@freezed
class StandingsResponse with _$StandingsResponse {
  @JsonSerializable(explicitToJson: true)
  factory StandingsResponse({
    required StandingsTeamInfo team,
    required TeamConferenceStandings conference,
    required TeamDivisionStandings division,
    required StandingsBreakdown win,
    required StandingsBreakdown loss,
    String? gamesBehind,
    required int streak,
    required bool winStreak,
  }) = _StandingsResponse;

  factory StandingsResponse.fromJson(Map<String, dynamic> json) =>
      _$StandingsResponseFromJson(json);
}

@freezed
class StandingsTeamInfo with _$StandingsTeamInfo {
  @JsonSerializable()
  factory StandingsTeamInfo({
    required int id,
    required String name,
    required String nickname,
  }) = _StandingsTeamInfo;

  factory StandingsTeamInfo.fromJson(Map<String, dynamic> json) =>
      _$StandingsTeamInfoFromJson(json);
}

@freezed
class TeamConferenceStandings with _$TeamConferenceStandings {
  @JsonSerializable()
  factory TeamConferenceStandings({
    @JsonKey(name: 'name') required String conferenceName,
    required int rank,
    required int win,
    required int loss,
  }) = _TeamConferenceStandings;

  factory TeamConferenceStandings.fromJson(Map<String, dynamic> json) =>
      _$TeamConferenceStandingsFromJson(json);
}

@freezed
class TeamDivisionStandings with _$TeamDivisionStandings {
  @JsonSerializable()
  factory TeamDivisionStandings({
    @JsonKey(name: 'name') required String divisionName,
    required int rank,
    required int win,
    required int loss,
    String? gamesBehind,
  }) = _TeamDivisionStandings;

  factory TeamDivisionStandings.fromJson(Map<String, dynamic> json) =>
      _$TeamDivisionStandingsFromJson(json);
}

@freezed
class StandingsBreakdown with _$StandingsBreakdown {
  @JsonSerializable()
  factory StandingsBreakdown({
    required int home,
    required int away,
    required int total,
    required String percentage,
    required int lastTen,
  }) = _StandingsBreakdown;

  factory StandingsBreakdown.fromJson(Map<String, dynamic> json) =>
      _$StandingsBreakdownFromJson(json);
}
