// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_score_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameBoxScoreImpl _$$GameBoxScoreImplFromJson(Map<String, dynamic> json) =>
    _$GameBoxScoreImpl(
      game: Game.fromJson(json['game'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : TeamBoxScore.fromJson(json['home'] as Map<String, dynamic>),
      away: json['away'] == null
          ? null
          : TeamBoxScore.fromJson(json['away'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameBoxScoreImplToJson(_$GameBoxScoreImpl instance) =>
    <String, dynamic>{
      'game': instance.game,
      'home': instance.home,
      'away': instance.away,
    };

_$TeamBoxScoreImpl _$$TeamBoxScoreImplFromJson(Map<String, dynamic> json) =>
    _$TeamBoxScoreImpl(
      team: TeamStats.fromJson(json['team'] as Map<String, dynamic>),
      record: json['record'] == null
          ? null
          : WinLossRecord.fromJson(json['record'] as Map<String, dynamic>),
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerStats.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamBoxScoreImplToJson(_$TeamBoxScoreImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'record': instance.record,
      'players': instance.players,
    };

_$TeamStatsImpl _$$TeamStatsImplFromJson(Map<String, dynamic> json) =>
    _$TeamStatsImpl(
      id: (json['id'] as num).toInt(),
      fgm: (json['fgm'] as num).toInt(),
      fga: (json['fga'] as num).toInt(),
      fg3pm: (json['fg3pm'] as num).toInt(),
      fg3pa: (json['fg3pa'] as num).toInt(),
      ftm: (json['ftm'] as num).toInt(),
      fta: (json['fta'] as num).toInt(),
      reb: (json['reb'] as num).toInt(),
      oreb: (json['oreb'] as num).toInt(),
      dreb: (json['dreb'] as num).toInt(),
      blk: (json['blk'] as num).toInt(),
      stl: (json['stl'] as num).toInt(),
      to: (json['to'] as num).toInt(),
    );

Map<String, dynamic> _$$TeamStatsImplToJson(_$TeamStatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fgm': instance.fgm,
      'fga': instance.fga,
      'fg3pm': instance.fg3pm,
      'fg3pa': instance.fg3pa,
      'ftm': instance.ftm,
      'fta': instance.fta,
      'reb': instance.reb,
      'oreb': instance.oreb,
      'dreb': instance.dreb,
      'blk': instance.blk,
      'stl': instance.stl,
      'to': instance.to,
    };

_$PlayerStatsImpl _$$PlayerStatsImplFromJson(Map<String, dynamic> json) =>
    _$PlayerStatsImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      startPosition: json['startPosition'] as String?,
      jersey: json['jersey'] as String,
      min: (json['min'] as num).toInt(),
      pts: (json['pts'] as num).toInt(),
      fgm: (json['fgm'] as num).toInt(),
      fga: (json['fga'] as num).toInt(),
      fg3pm: (json['fg3pm'] as num).toInt(),
      fg3pa: (json['fg3pa'] as num).toInt(),
      ftm: (json['ftm'] as num).toInt(),
      fta: (json['fta'] as num).toInt(),
      reb: (json['reb'] as num).toInt(),
      oreb: (json['oreb'] as num).toInt(),
      dreb: (json['dreb'] as num).toInt(),
      blk: (json['blk'] as num).toInt(),
      stl: (json['stl'] as num).toInt(),
      to: (json['to'] as num).toInt(),
    );

Map<String, dynamic> _$$PlayerStatsImplToJson(_$PlayerStatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'startPosition': instance.startPosition,
      'jersey': instance.jersey,
      'min': instance.min,
      'pts': instance.pts,
      'fgm': instance.fgm,
      'fga': instance.fga,
      'fg3pm': instance.fg3pm,
      'fg3pa': instance.fg3pa,
      'ftm': instance.ftm,
      'fta': instance.fta,
      'reb': instance.reb,
      'oreb': instance.oreb,
      'dreb': instance.dreb,
      'blk': instance.blk,
      'stl': instance.stl,
      'to': instance.to,
    };
