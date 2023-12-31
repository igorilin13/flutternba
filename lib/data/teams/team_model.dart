import 'package:flutternba/data/teams/remote/team_response.dart';

class Team {
  final int id;
  final String name;
  final String fullName;

  const Team(this.id, this.name, this.fullName);

  factory Team.fromResponse(TeamResponse response) {
    return Team(response.id, response.name, response.fullName);
  }
}