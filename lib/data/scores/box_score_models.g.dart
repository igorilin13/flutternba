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
      fgMade: (json['fgMade'] as num).toInt(),
      fgAttempts: (json['fgAttempts'] as num).toInt(),
      threePtMade: (json['threePtMade'] as num).toInt(),
      threePtAttempts: (json['threePtAttempts'] as num).toInt(),
      ftMade: (json['ftMade'] as num).toInt(),
      ftAttempts: (json['ftAttempts'] as num).toInt(),
      rebounds: (json['rebounds'] as num).toInt(),
      offRebounds: (json['offRebounds'] as num).toInt(),
      defRebounds: (json['defRebounds'] as num).toInt(),
      blocks: (json['blocks'] as num).toInt(),
      steals: (json['steals'] as num).toInt(),
      turnovers: (json['turnovers'] as num).toInt(),
      assists: (json['assists'] as num).toInt(),
    );

Map<String, dynamic> _$$TeamStatsImplToJson(_$TeamStatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fgMade': instance.fgMade,
      'fgAttempts': instance.fgAttempts,
      'threePtMade': instance.threePtMade,
      'threePtAttempts': instance.threePtAttempts,
      'ftMade': instance.ftMade,
      'ftAttempts': instance.ftAttempts,
      'rebounds': instance.rebounds,
      'offRebounds': instance.offRebounds,
      'defRebounds': instance.defRebounds,
      'blocks': instance.blocks,
      'steals': instance.steals,
      'turnovers': instance.turnovers,
      'assists': instance.assists,
    };

_$PlayerStatsImpl _$$PlayerStatsImplFromJson(Map<String, dynamic> json) =>
    _$PlayerStatsImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      jersey: json['jersey'] as String,
      minutes: (json['minutes'] as num).toInt(),
      points: (json['points'] as num).toInt(),
      fgMade: (json['fgMade'] as num).toInt(),
      fgAttempts: (json['fgAttempts'] as num).toInt(),
      threePtMade: (json['threePtMade'] as num).toInt(),
      threePtAttempts: (json['threePtAttempts'] as num).toInt(),
      ftMade: (json['ftMade'] as num).toInt(),
      ftAttempts: (json['ftAttempts'] as num).toInt(),
      rebounds: (json['rebounds'] as num).toInt(),
      offRebounds: (json['offRebounds'] as num).toInt(),
      defRebounds: (json['defRebounds'] as num).toInt(),
      blocks: (json['blocks'] as num).toInt(),
      steals: (json['steals'] as num).toInt(),
      turnovers: (json['turnovers'] as num).toInt(),
      assists: (json['assists'] as num).toInt(),
    );

Map<String, dynamic> _$$PlayerStatsImplToJson(_$PlayerStatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'jersey': instance.jersey,
      'minutes': instance.minutes,
      'points': instance.points,
      'fgMade': instance.fgMade,
      'fgAttempts': instance.fgAttempts,
      'threePtMade': instance.threePtMade,
      'threePtAttempts': instance.threePtAttempts,
      'ftMade': instance.ftMade,
      'ftAttempts': instance.ftAttempts,
      'rebounds': instance.rebounds,
      'offRebounds': instance.offRebounds,
      'defRebounds': instance.defRebounds,
      'blocks': instance.blocks,
      'steals': instance.steals,
      'turnovers': instance.turnovers,
      'assists': instance.assists,
    };
