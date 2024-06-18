// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playoff_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayoffRoundImpl _$$PlayoffRoundImplFromJson(Map<String, dynamic> json) =>
    _$PlayoffRoundImpl(
      id: (json['id'] as num).toInt(),
      series: (json['series'] as List<dynamic>)
          .map((e) => PlayoffSeries.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlayoffRoundImplToJson(_$PlayoffRoundImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'series': instance.series,
    };

_$PlayoffSeriesImpl _$$PlayoffSeriesImplFromJson(Map<String, dynamic> json) =>
    _$PlayoffSeriesImpl(
      conferenceId: (json['conferenceId'] as num).toInt(),
      homeTeamRank: (json['homeTeamRank'] as num).toInt(),
      homeTeamId: (json['homeTeamId'] as num).toInt(),
      homeTeamName: json['homeTeamName'] as String,
      homeTeamWins: (json['homeTeamWins'] as num).toInt(),
      awayTeamRank: (json['awayTeamRank'] as num).toInt(),
      awayTeamId: (json['awayTeamId'] as num).toInt(),
      awayTeamName: json['awayTeamName'] as String,
      awayTeamWins: (json['awayTeamWins'] as num).toInt(),
    );

Map<String, dynamic> _$$PlayoffSeriesImplToJson(_$PlayoffSeriesImpl instance) =>
    <String, dynamic>{
      'conferenceId': instance.conferenceId,
      'homeTeamRank': instance.homeTeamRank,
      'homeTeamId': instance.homeTeamId,
      'homeTeamName': instance.homeTeamName,
      'homeTeamWins': instance.homeTeamWins,
      'awayTeamRank': instance.awayTeamRank,
      'awayTeamId': instance.awayTeamId,
      'awayTeamName': instance.awayTeamName,
      'awayTeamWins': instance.awayTeamWins,
    };
