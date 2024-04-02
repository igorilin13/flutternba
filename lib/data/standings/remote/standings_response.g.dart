// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StandingsResponseImpl _$$StandingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StandingsResponseImpl(
      team: StandingsTeamInfo.fromJson(json['team'] as Map<String, dynamic>),
      conference: TeamConferenceStandings.fromJson(
          json['conference'] as Map<String, dynamic>),
      division: TeamDivisionStandings.fromJson(
          json['division'] as Map<String, dynamic>),
      win: StandingsBreakdown.fromJson(json['win'] as Map<String, dynamic>),
      loss: StandingsBreakdown.fromJson(json['loss'] as Map<String, dynamic>),
      gamesBehind: json['gamesBehind'] as String?,
      streak: json['streak'] as int,
      winStreak: json['winStreak'] as bool,
    );

Map<String, dynamic> _$$StandingsResponseImplToJson(
        _$StandingsResponseImpl instance) =>
    <String, dynamic>{
      'team': instance.team.toJson(),
      'conference': instance.conference.toJson(),
      'division': instance.division.toJson(),
      'win': instance.win.toJson(),
      'loss': instance.loss.toJson(),
      'gamesBehind': instance.gamesBehind,
      'streak': instance.streak,
      'winStreak': instance.winStreak,
    };

_$StandingsTeamInfoImpl _$$StandingsTeamInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$StandingsTeamInfoImpl(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$StandingsTeamInfoImplToJson(
        _$StandingsTeamInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
    };

_$TeamConferenceStandingsImpl _$$TeamConferenceStandingsImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamConferenceStandingsImpl(
      conferenceName: json['name'] as String,
      rank: json['rank'] as int,
      win: json['win'] as int,
      loss: json['loss'] as int,
    );

Map<String, dynamic> _$$TeamConferenceStandingsImplToJson(
        _$TeamConferenceStandingsImpl instance) =>
    <String, dynamic>{
      'name': instance.conferenceName,
      'rank': instance.rank,
      'win': instance.win,
      'loss': instance.loss,
    };

_$TeamDivisionStandingsImpl _$$TeamDivisionStandingsImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamDivisionStandingsImpl(
      divisionName: json['name'] as String,
      rank: json['rank'] as int,
      win: json['win'] as int,
      loss: json['loss'] as int,
      gamesBehind: json['gamesBehind'] as String?,
    );

Map<String, dynamic> _$$TeamDivisionStandingsImplToJson(
        _$TeamDivisionStandingsImpl instance) =>
    <String, dynamic>{
      'name': instance.divisionName,
      'rank': instance.rank,
      'win': instance.win,
      'loss': instance.loss,
      'gamesBehind': instance.gamesBehind,
    };

_$StandingsBreakdownImpl _$$StandingsBreakdownImplFromJson(
        Map<String, dynamic> json) =>
    _$StandingsBreakdownImpl(
      home: json['home'] as int,
      away: json['away'] as int,
      total: json['total'] as int,
      percentage: json['percentage'] as String,
      lastTen: json['lastTen'] as int,
    );

Map<String, dynamic> _$$StandingsBreakdownImplToJson(
        _$StandingsBreakdownImpl instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
      'total': instance.total,
      'percentage': instance.percentage,
      'lastTen': instance.lastTen,
    };
