import 'package:flutternba/data/games/games_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../../../data/settings/settings_repository.dart';
import '../base_get_games.dart';
import 'favorite_team_games.dart';

class GetFavoriteTeamGamesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;
  final SettingsRepository _settingsRepository;

  GetFavoriteTeamGamesUseCase(
    this._gamesRepository,
    this._settingsRepository,
    super._formatGameDateUseCase,
  );

  Stream<FavoriteTeamGamesResult> call() {
    return _settingsRepository.getFavoriteTeamId().switchMap((teamId) {
      if (teamId != null) {
        return createResult(games: _gamesRepository.getTeamGames(teamId))
            .asStream()
            .map((event) => FavoriteTeamGamesResult.hasFavorite(event))
            .startWith(const FavoriteTeamGamesResult.hasFavorite(null));
      } else {
        return Stream.value(const FavoriteTeamGamesResult.noFavorite());
      }
    });
  }
}
