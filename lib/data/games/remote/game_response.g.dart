// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameResponse _$GameResponseFromJson(Map<String, dynamic> json) => GameResponse(
      id: json['id'] as int,
      leagueDate: json['leagueDate'] as String,
      homeTeam: Team.fromJson(json['homeTeam'] as Map<String, dynamic>),
      homeTeamScore: json['homeTeamScore'] as int,
      postseason: json['postseason'] as bool,
      status: json['status'] as int,
      inGameTime: json['inGameTime'] as String?,
      visitorTeamScore: json['visitorTeamScore'] as int,
      visitorTeam: Team.fromJson(json['visitorTeam'] as Map<String, dynamic>),
      scheduled: json['scheduled'] as String?,
    );

Map<String, dynamic> _$GameResponseToJson(GameResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'leagueDate': instance.leagueDate,
      'homeTeam': instance.homeTeam,
      'homeTeamScore': instance.homeTeamScore,
      'postseason': instance.postseason,
      'status': instance.status,
      'inGameTime': instance.inGameTime,
      'visitorTeamScore': instance.visitorTeamScore,
      'visitorTeam': instance.visitorTeam,
      'scheduled': instance.scheduled,
    };
