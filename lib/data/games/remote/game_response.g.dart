// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameResponse _$GameResponseFromJson(Map<String, dynamic> json) => GameResponse(
      id: json['id'] as int,
      date: json['date'] as String,
      homeTeam: TeamResponse.fromJson(json['homeTeam'] as Map<String, dynamic>),
      homeTeamScore: json['homeTeamScore'] as int,
      postseason: json['postseason'] as bool,
      status: json['status'] as String,
      time: json['time'] as String?,
      visitorTeamScore: json['visitorTeamScore'] as int,
      visitorTeam:
          TeamResponse.fromJson(json['visitorTeam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameResponseToJson(GameResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'homeTeam': instance.homeTeam,
      'homeTeamScore': instance.homeTeamScore,
      'postseason': instance.postseason,
      'status': instance.status,
      'time': instance.time,
      'visitorTeamScore': instance.visitorTeamScore,
      'visitorTeam': instance.visitorTeam,
    };
