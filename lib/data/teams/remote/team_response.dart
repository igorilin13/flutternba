import 'package:json_annotation/json_annotation.dart';

part 'team_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TeamResponse {
  final int id;
  final String abbreviation;
  final String city;
  final String conference;
  final String division;
  final String fullName;
  final String name;

  const TeamResponse({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.fullName,
    required this.name,
  });

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);
}
