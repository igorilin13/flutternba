// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameResponse _$GameResponseFromJson(Map<String, dynamic> json) => GameResponse(
      id: json['id'] as int,
      date: json['date'] as String,
      homeTeam:
          TeamResponse.fromJson(json['home_team'] as Map<String, dynamic>),
      homeTeamScore: json['home_team_score'] as int,
      period: json['period'] as int,
      postseason: json['postseason'] as bool,
      status: json['status'] as String,
      time: json['time'] as String?,
      visitorTeamScore: json['visitor_team_score'] as int,
      visitorTeam:
          TeamResponse.fromJson(json['visitor_team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameResponseToJson(GameResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'home_team': instance.homeTeam,
      'home_team_score': instance.homeTeamScore,
      'period': instance.period,
      'postseason': instance.postseason,
      'status': instance.status,
      'time': instance.time,
      'visitor_team_score': instance.visitorTeamScore,
      'visitor_team': instance.visitorTeam,
    };
