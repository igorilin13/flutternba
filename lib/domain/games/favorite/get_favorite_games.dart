import 'package:flutternba/data/games/games_repository.dart';

import '../base_get_games.dart';
import 'favorite_team_games_result.dart';

class GetFavoriteTeamGamesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;

  GetFavoriteTeamGamesUseCase(
    this._gamesRepository,
    super._formatGameDateUseCase,
  );

  Future<FavoriteTeamGamesResult> call(int? teamId) async {
    if (teamId != null) {
      return HasFavoriteTeam(
        await createResult(games: _gamesRepository.getTeamGames(teamId)),
      );
    } else {
      return NoFavoriteTeam();
    }
  }
}
