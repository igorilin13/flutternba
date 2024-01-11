import 'package:flutternba/data/games/remote/game_response.dart';

import '../teams/team_model.dart';

class Game {
  final int id;
  final DateTime date;
  final Team homeTeam;
  final int homeTeamScore;
  final bool postseason;
  final String? time;
  final int visitorTeamScore;
  final Team visitorTeam;
  final GameStatus gameStatus;

  Game({
    required this.id,
    required this.date,
    required this.homeTeam,
    required this.homeTeamScore,
    required this.postseason,
    required this.time,
    required this.visitorTeamScore,
    required this.visitorTeam,
    required this.gameStatus,
  });

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
