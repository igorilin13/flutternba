import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/data/settings/settings_repository.dart';
import 'package:flutternba/domain/games/base_get_games.dart';
import 'package:rxdart/rxdart.dart';

import 'favorite_team_games.dart';

class GetFavoriteTeamGamesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;
  final SettingsRepository _settingsRepository;

  GetFavoriteTeamGamesUseCase(
    this._gamesRepository,
    this._settingsRepository,
    super._formatGameDateUseCase,
    super._getStandingsUseCase,
  );

  Stream<FavoriteTeamGamesResult> call() {
    return _settingsRepository.getFavoriteTeamId().switchMap((teamId) {
      if (teamId != null) {
        return createResult(
          loadGames: _gamesRepository.getTeamGames(teamId).asStream(),
        )
            .map((event) => FavoriteTeamGamesResult.hasFavorite(event, teamId))
            .startWith(FavoriteTeamGamesResult.hasFavorite(null, teamId));
      } else {
        return Stream.value(const FavoriteTeamGamesResult.noFavorite());
      }
    });
  }
}
