import 'package:flutternba/domain/games/game_item.dart';

import '../../../common/util/result.dart';
import '../../../data/games/games_repository.dart';
import '../base_get_games.dart';

class GetLeagueGamesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;

  GetLeagueGamesUseCase(
    this._gamesRepository,
    super._formatGameDateUseCase,
    super._getStandingsUseCase,
  );

  Stream<Result<List<GameItem>>> call() {
    return createResult(
      loadGames: _gamesRepository.getLeagueGames(DateTime.now()).asStream(),
    );
  }
}
