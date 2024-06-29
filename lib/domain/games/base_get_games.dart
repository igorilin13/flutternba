import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../../common/util/result.dart';
import '../../data/games/game_model.dart';
import '../date/game_time_formatter.dart';
import 'game_item.dart';

abstract class BaseGetGamesUseCase {
  final FormatGameTimeUseCase _formatGameDateUseCase;
  final StandingsRepository _standingsRepository;

  BaseGetGamesUseCase(this._formatGameDateUseCase, this._standingsRepository);

  @protected
  Stream<Result<List<GameItem>>> createDomainResult({
    required Stream<Result<List<Game>>> loadGames,
  }) {
    return CombineLatestStream.combine2(
      loadGames,
      _standingsRepository.getAllTeams().asStream(),
      (gamesResult, standings) {
        return gamesResult.mapValue((games) {
          final standingsByTeamId = Map<int, TeamStandings>.fromIterable(
            standings.valueOrNull ?? [],
            key: (team) => team.id,
          );

          return games.mapList((game) => _toGameItem(game, standingsByTeamId));
        });
      },
    );
  }

  GameItem _toGameItem(Game game, Map<int, TeamStandings> standingsByTeamId) {
    return GameItem(
      game: game,
      formattedDate: _formatGameDateUseCase(game.displayDate),
      homeTeamRecord: standingsByTeamId[game.homeTeam.id]?.overall,
      visitorTeamRecord: standingsByTeamId[game.visitorTeam.id]?.overall,
    );
  }
}
