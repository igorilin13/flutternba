import '../team_model.dart';

class TeamDbEntity {
  final int id;
  final String name;
  final String fullName;

  const TeamDbEntity({
    required this.id,
    required this.name,
    required this.fullName,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'fullName': fullName,
    };
  }

  Team toModel() {
    return Team(
      id: id,
      name: name,
      fullName: fullName,
    );
  }

  factory TeamDbEntity.fromMap(Map<String, dynamic> map) {
    return TeamDbEntity(
      id: map["id"],
      name: map["name"],
      fullName: map["fullName"],
    );
  }

  factory TeamDbEntity.fromTeamModel(Team team) {
    return TeamDbEntity(
      id: team.id,
      name: team.name,
      fullName: team.fullName,
    );
  }
}
