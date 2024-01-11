import 'package:flutternba/common/util/collections.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/domain/date/date_formatter.dart';
import 'package:flutternba/domain/games/game_item.dart';

import 'favorite_team_games.dart';

class GetFavoriteTeamGamesUseCase {
  final GamesRepository _gamesRepository;
  final SettingsRepository _settingsRepository;
  final FormatGameDateUseCase _formatGameDateUseCase;

  GetFavoriteTeamGamesUseCase(
    this._gamesRepository,
    this._settingsRepository,
    this._formatGameDateUseCase,
  );

  // todo: stream data on changes
  Future<FavoriteTeamGamesResult> call() async {
    final teamId = _settingsRepository.getFavoriteTeamId();
    if (teamId != null) {
      final hideScores = _settingsRepository.shouldHideScores();
      final gamesResult = await _gamesRepository.getTeamGames(teamId);
      return HasFavoriteTeam(gamesResult.map(
        (games) => games.mapList((game) => _toGameItem(game, hideScores)),
      ));
    } else {
      return NoFavoriteTeam();
    }
  }

  GameItem _toGameItem(Game game, bool hideScores) {
    return GameItem(
      game: game,
      formattedDate: _formatGameDateUseCase(game.date),
      showScores: !hideScores,
    );
  }
}
