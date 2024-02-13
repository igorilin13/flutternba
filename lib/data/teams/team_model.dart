import 'package:flutternba/data/teams/remote/team_response.dart';

class Team {
  final int id;
  final String name;
  final String fullName;

  const Team({required this.id, required this.name, required this.fullName});

  factory Team.fromResponse(TeamResponse response) {
    return Team(
      id: response.id,
      name: response.name,
      fullName: response.fullName,
    );
  }
}
