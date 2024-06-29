import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../teams/team_model.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

typedef GamesPageKey = QueryDocumentSnapshot;

@JsonEnum(valueField: 'apiId')
enum GameStatus {
  scheduled(0),
  live(1),
  finished(2);

  final int apiId;

  const GameStatus(this.apiId);
}

enum TeamOutcome { win, loss }

@freezed
class Game with _$Game {
  const factory Game({
    required int id,
    required DateTime leagueDate,
    required DateTime? scheduled,
    required Team homeTeam,
    required int homeTeamScore,
    required bool postseason,
    required String? inGameTime,
    required int visitorTeamScore,
    required Team visitorTeam,
    required GameStatus status,
  }) = _Game;

  const Game._();

  DateTime get displayDate => scheduled ?? leagueDate;

  TeamOutcome? getTeamOutcome(int teamId) {
    if (status != GameStatus.finished) {
      return null;
    } else if (homeTeam.id == teamId) {
      return homeTeamScore > visitorTeamScore
          ? TeamOutcome.win
          : TeamOutcome.loss;
    } else {
      return visitorTeamScore > homeTeamScore
          ? TeamOutcome.win
          : TeamOutcome.loss;
    }
  }

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
