import 'package:flutternba/data/games/game_model.dart';

class GameItem {
  final Game game;
  final String formattedDate;

  GameItem({
    required this.game,
    required this.formattedDate,
  });
}
