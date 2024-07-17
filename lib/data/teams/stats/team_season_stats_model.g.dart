// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_season_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamSeasonStatsImpl _$$TeamSeasonStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamSeasonStatsImpl(
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      points: (json['points'] as num).toDouble(),
      pointsAgainst: (json['pointsAgainst'] as num).toDouble(),
      fgMade: (json['fgMade'] as num).toDouble(),
      fgAttempts: (json['fgAttempts'] as num).toDouble(),
      threePtMade: (json['threePtMade'] as num).toDouble(),
      threePtAttempts: (json['threePtAttempts'] as num).toDouble(),
      ftMade: (json['ftMade'] as num).toDouble(),
      ftAttempts: (json['ftAttempts'] as num).toDouble(),
      rebounds: (json['rebounds'] as num).toDouble(),
      offRebounds: (json['offRebounds'] as num).toDouble(),
      defRebounds: (json['defRebounds'] as num).toDouble(),
      blocks: (json['blocks'] as num).toDouble(),
      steals: (json['steals'] as num).toDouble(),
      turnovers: (json['turnovers'] as num).toDouble(),
      assists: (json['assists'] as num).toDouble(),
    );

Map<String, dynamic> _$$TeamSeasonStatsImplToJson(
        _$TeamSeasonStatsImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'points': instance.points,
      'pointsAgainst': instance.pointsAgainst,
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
