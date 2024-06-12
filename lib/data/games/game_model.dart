import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutternba/data/games/remote/game_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../teams/team_model.dart';

part 'game_model.freezed.dart';

typedef GamesPageKey = QueryDocumentSnapshot;

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
    required DateTime? scheduledDateTime,
    required Team homeTeam,
    required int homeTeamScore,
    required bool postseason,
    required String? time,
    required int visitorTeamScore,
    required Team visitorTeam,
    required GameStatus gameStatus,
  }) = _Game;

  const Game._();

  TeamOutcome? getTeamOutcome(int teamId) {
    if (gameStatus != GameStatus.finished) {
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

  factory Game.fromResponse(GameResponse response) {
    final GameStatus gameStatus = GameStatus.values
        .firstWhere((element) => element.apiId == response.status);

    return Game(
      id: response.id,
      leagueDate: DateTime.parse(response.leagueDate),
      scheduledDateTime: response.scheduled != null
          ? DateTime.parse(response.scheduled!)
          : null,
      homeTeam: Team.fromResponse(response.homeTeam),
      homeTeamScore: response.homeTeamScore,
      postseason: response.postseason,
      time: response.inGameTime,
      visitorTeamScore: response.visitorTeamScore,
      visitorTeam: Team.fromResponse(response.visitorTeam),
      gameStatus: gameStatus,
    );
  }
}
