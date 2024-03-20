import 'package:flutternba/data/games/remote/game_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../teams/team_model.dart';

part 'game_model.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required int id,
    required DateTime date,
    required Team homeTeam,
    required int homeTeamScore,
    required bool postseason,
    required String? time,
    required int visitorTeamScore,
    required Team visitorTeam,
    required GameStatus gameStatus,
  }) = _Game;

  factory Game.fromResponse(GameResponse response) {
    final GameStatus gameStatus;
    if (response.time == null) {
      gameStatus = GameStatus.scheduled;
    } else if (response.status.toLowerCase().contains("final")) {
      gameStatus = GameStatus.finished;
    } else {
      gameStatus = GameStatus.live;
    }

    DateTime parsedDate;
    if (gameStatus == GameStatus.scheduled) {
      try {
        // At the time of writing this, the date field is always incorrect (usually off by a day)
        // For upcoming games, the status field contains the correct date
        parsedDate = DateTime.parse(response.status);
      } catch (e) {
        parsedDate = DateTime.parse(response.date);
      }
    } else {
      parsedDate = DateTime.parse(response.date);
    }

    return Game(
      id: response.id,
      date: parsedDate,
      homeTeam: Team.fromResponse(response.homeTeam),
      homeTeamScore: response.homeTeamScore,
      postseason: response.postseason,
      time: response.time,
      visitorTeamScore: response.visitorTeamScore,
      visitorTeam: Team.fromResponse(response.visitorTeam),
      gameStatus: gameStatus,
    );
  }
}

enum GameStatus { scheduled, live, finished }
