// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamStandingsImpl _$$TeamStandingsImplFromJson(Map<String, dynamic> json) =>
    _$TeamStandingsImpl(
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      conference: TeamRank.fromJson(json['conference'] as Map<String, dynamic>),
      division: TeamRank.fromJson(json['division'] as Map<String, dynamic>),
      overall: WinLossRecord.fromJson(json['overall'] as Map<String, dynamic>),
      home: WinLossRecord.fromJson(json['home'] as Map<String, dynamic>),
      away: WinLossRecord.fromJson(json['away'] as Map<String, dynamic>),
      lastTen: WinLossRecord.fromJson(json['lastTen'] as Map<String, dynamic>),
      streak: (json['streak'] as num).toInt(),
      isWinStreak: json['isWinStreak'] as bool,
    );

Map<String, dynamic> _$$TeamStandingsImplToJson(_$TeamStandingsImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'conference': instance.conference,
      'division': instance.division,
      'overall': instance.overall,
      'home': instance.home,
      'away': instance.away,
      'lastTen': instance.lastTen,
      'streak': instance.streak,
      'isWinStreak': instance.isWinStreak,
    };

_$TeamRankImpl _$$TeamRankImplFromJson(Map<String, dynamic> json) =>
    _$TeamRankImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      rank: (json['rank'] as num).toInt(),
      gamesBehind: json['gamesBehind'] as String?,
    );

Map<String, dynamic> _$$TeamRankImplToJson(_$TeamRankImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rank': instance.rank,
      'gamesBehind': instance.gamesBehind,
    };

_$WinLossRecordImpl _$$WinLossRecordImplFromJson(Map<String, dynamic> json) =>
    _$WinLossRecordImpl(
      win: (json['win'] as num).toInt(),
      loss: (json['loss'] as num).toInt(),
    );

Map<String, dynamic> _$$WinLossRecordImplToJson(_$WinLossRecordImpl instance) =>
    <String, dynamic>{
      'win': instance.win,
      'loss': instance.loss,
    };
