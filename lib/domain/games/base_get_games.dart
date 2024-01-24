import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/async_util.dart';
import 'package:flutternba/common/util/collections.dart';

import '../../common/util/result.dart';
import '../../data/games/game_model.dart';
import '../../data/games/games_repository.dart';
import '../../data/settings/settings_repository.dart';
import '../date/date_formatter.dart';
import 'game_item.dart';

abstract class BaseGetGamesUseCase {
  @protected
  final SettingsRepository settingsRepository;
  final FormatGameDateUseCase _formatGameDateUseCase;

  BaseGetGamesUseCase(
    this.settingsRepository,
    this._formatGameDateUseCase,
  );

  @protected
  Future<Result<List<GameItem>>> createResult({
    required Future<Result<List<Game>>> games,
  }) async {
    final hideScores = settingsRepository.shouldHideScores();
    return games.mapResult(
      (games) => games.mapList((game) => _toGameItem(game, hideScores)),
    );
  }

  GameItem _toGameItem(Game game, bool hideScores) {
    return GameItem(
      game: game,
      formattedDate: _formatGameDateUseCase(game.date),
      showScores: !hideScores,
    );
  }
}
