import 'package:json_annotation/json_annotation.dart';

import '../../teams/remote/team_response.dart';

part 'game_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GameResponse {
  final int id;
  final String date;
  final TeamResponse homeTeam;
  final int homeTeamScore;
  final int period;
  final bool postseason;
  final String status;
  final String? time;
  final int visitorTeamScore;
  final TeamResponse visitorTeam;

  GameResponse({
    required this.id,
    required this.date,
    required this.homeTeam,
    required this.homeTeamScore,
    required this.period,
    required this.postseason,
    required this.status,
    required this.time,
    required this.visitorTeamScore,
    required this.visitorTeam,
  });

  factory GameResponse.fromJson(Map<String, dynamic> json) =>
      _$GameResponseFromJson(json);
}
