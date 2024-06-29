// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      id: (json['id'] as num).toInt(),
      leagueDate: DateTime.parse(json['leagueDate'] as String),
      scheduled: json['scheduled'] == null
          ? null
          : DateTime.parse(json['scheduled'] as String),
      homeTeam: Team.fromJson(json['homeTeam'] as Map<String, dynamic>),
      homeTeamScore: (json['homeTeamScore'] as num).toInt(),
      postseason: json['postseason'] as bool,
      inGameTime: json['inGameTime'] as String?,
      visitorTeamScore: (json['visitorTeamScore'] as num).toInt(),
      visitorTeam: Team.fromJson(json['visitorTeam'] as Map<String, dynamic>),
      status: $enumDecode(_$GameStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'leagueDate': instance.leagueDate.toIso8601String(),
      'scheduled': instance.scheduled?.toIso8601String(),
      'homeTeam': instance.homeTeam,
      'homeTeamScore': instance.homeTeamScore,
      'postseason': instance.postseason,
      'inGameTime': instance.inGameTime,
      'visitorTeamScore': instance.visitorTeamScore,
      'visitorTeam': instance.visitorTeam,
      'status': _$GameStatusEnumMap[instance.status]!,
    };

const _$GameStatusEnumMap = {
  GameStatus.scheduled: 0,
  GameStatus.live: 1,
  GameStatus.finished: 2,
};
