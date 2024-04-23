import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/domain/games/base_get_games.dart';
import 'package:flutternba/domain/games/game_item.dart';

class GetTeamGamesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;

  GetTeamGamesUseCase(
    this._gamesRepository,
    super._formatGameDateUseCase,
    super._getStandingsUseCase,
  );

  Stream<Result<List<GameItem>>> call(int teamId) {
    return createResult(
      loadGames: _gamesRepository.getTeamGames(teamId).asStream(),
    );
  }
}
