import 'package:json_annotation/json_annotation.dart';

part 'team_response.g.dart';

@JsonSerializable()
class TeamResponse {
  final int id;
  final String name;
  final String fullName;

  const TeamResponse({
    required this.id,
    required this.fullName,
    required this.name,
  });

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);
}
