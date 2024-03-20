import 'package:flutternba/data/teams/remote/team_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_model.freezed.dart';

@freezed
class Team with _$Team {
  const factory Team({
    required int id,
    required String name,
    required String fullName,
  }) = _Team;

  factory Team.fromResponse(TeamResponse response) {
    return Team(
      id: response.id,
      name: response.name,
      fullName: response.fullName,
    );
  }
}
