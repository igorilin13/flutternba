import 'package:flutternba/domain/games/game_item.dart';

import '../../../common/util/result.dart';
import '../../../data/games/games_repository.dart';
import '../base_get_games.dart';

class GetLeagueGamesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;

  GetLeagueGamesUseCase(
    this._gamesRepository,
    super.settingsRepository,
    super._formatGameDateUseCase,
  );

  // todo: stream data on changes
  Future<Result<List<GameItem>>> call() async {
    return createResult(games: _gamesRepository.getLeagueGames(DateTime.now()));
  }
}
