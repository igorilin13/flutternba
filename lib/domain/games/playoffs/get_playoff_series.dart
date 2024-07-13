import 'package:collection/collection.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/games/games_repository.dart';
import 'package:flutternba/domain/games/base_get_games.dart';
import 'package:flutternba/domain/games/playoffs/playoff_series_model.dart';

class GetPlayoffSeriesUseCase extends BaseGetGamesUseCase {
  final GamesRepository _gamesRepository;

  GetPlayoffSeriesUseCase(
    this._gamesRepository,
    super._formatGameDateUseCase,
    super._getStandingsUseCase,
  );

  Stream<Result<PlayoffSeriesGames>> call(String seriesId) {
    return createDomainResult(
      loadGames: _gamesRepository.getPlayoffSeriesGames(seriesId).asStream(),
    ).map((result) {
      return result.mapValue((items) {
        items.sort((a, b) => b.game.leagueDate.compareTo(a.game.leagueDate));
        final gameModels = items.mapIndexed(
          (index, item) => PlayoffGameItem(
            item: item,
            gameNumber: items.length - index,
          ),
        );

        final homeTeamId = items.last.game.homeTeam.id;
        final visitorTeamId = items.last.game.visitorTeam.id;
        int homeTeamWins = 0;
        int visitorTeamWins = 0;
        for (final item in items) {
          final game = item.game;
          final winnerId = game.homeTeamScore > game.visitorTeamScore
              ? game.homeTeam.id
              : game.visitorTeam.id;
          if (winnerId == homeTeamId) {
            homeTeamWins++;
          } else if (winnerId == visitorTeamId) {
            visitorTeamWins++;
          }
        }

        return PlayoffSeriesGames(
          items: gameModels.toList(growable: false),
          homeTeam: items.last.game.homeTeam,
          visitorTeam: items.last.game.visitorTeam,
          homeTeamWins: homeTeamWins,
          visitorTeamWins: visitorTeamWins,
          isFinished: homeTeamWins >= 4 || visitorTeamWins >= 4,
        );
      });
    });
  }
}
