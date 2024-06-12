import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/common/paged_data.dart';
import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/domain/games/base_get_games.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:rxdart/rxdart.dart';

class TeamGamesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;

  TeamGamesUseCase(
    this._gamesRepository,
    super._formatGameDateUseCase,
    super._getStandingsUseCase,
  );

  Stream<Result<List<GameItem>>> getLiveOrScheduled({
    required int teamId,
    int? limit,
  }) {
    return createDomainResult(
      loadGames: _gamesRepository
          .getLiveOrScheduledTeamGames(teamId, limit)
          .asStream(),
    );
  }

  Stream<Result<PagedData<GameItem, GamesPageKey>>> getFinished({
    required int teamId,
    int? limit,
    GamesPageKey? pageKey,
  }) {
    return _gamesRepository
        .getFinishedTeamGames(teamId, limit, pageKey)
        .asStream()
        .switchMap(
          (loadedPage) => createDomainResult(
            loadGames: Stream.value(loadedPage.map((value) => value.items)),
          ).map(
            (domainResult) => domainResult.map(
              (games) => PagedData(
                items: games,
                nextKey: loadedPage.valueOrNull?.nextKey,
              ),
            ),
          ),
        );
  }
}
