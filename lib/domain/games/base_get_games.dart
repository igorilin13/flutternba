import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';

import '../../common/util/result.dart';
import '../../data/games/game_model.dart';
import '../date/date_formatter.dart';
import 'game_item.dart';

abstract class BaseGetGamesUseCase {
  final FormatGameDateUseCase _formatGameDateUseCase;

  BaseGetGamesUseCase(this._formatGameDateUseCase);

  @protected
  Future<Result<List<GameItem>>> createResult({
    required Future<Result<List<Game>>> games,
  }) async {
    return games.mapResult((games) => games.mapList(_toGameItem));
  }

  GameItem _toGameItem(Game game) {
    return GameItem(
      game: game,
      formattedDate: _formatGameDateUseCase(game.date),
    );
  }
}
