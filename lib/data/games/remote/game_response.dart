import 'package:flutternba/data/teams/team_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_response.g.dart';

@JsonSerializable()
class GameResponse {
  final int id;
  final String leagueDate;
  final Team homeTeam;
  final int homeTeamScore;
  final bool postseason;
  final int status;
  final String? inGameTime;
  final int visitorTeamScore;
  final Team visitorTeam;
  final String? scheduled;

  GameResponse({
    required this.id,
    required this.leagueDate,
    required this.homeTeam,
    required this.homeTeamScore,
    required this.postseason,
    required this.status,
    required this.inGameTime,
    required this.visitorTeamScore,
    required this.visitorTeam,
    required this.scheduled,
  });

  factory GameResponse.fromJson(Map<String, dynamic> json) =>
      _$GameResponseFromJson(json);
}
