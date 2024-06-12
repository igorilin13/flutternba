import 'package:flutter/cupertino.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/standings/standings_use_case.dart';
import 'package:rxdart/rxdart.dart';

import '../../common/util/result.dart';
import '../../data/games/game_model.dart';
import '../date/game_time_formatter.dart';
import 'game_item.dart';

abstract class BaseGetGamesUseCase {
  final FormatGameTimeUseCase _formatGameDateUseCase;
  final StandingsUseCase _getStandingsUseCase;

  BaseGetGamesUseCase(this._formatGameDateUseCase, this._getStandingsUseCase);

  @protected
  Stream<Result<List<GameItem>>> createDomainResult({
    required Stream<Result<List<Game>>> loadGames,
  }) {
    return CombineLatestStream.combine2(
      loadGames,
      _getStandingsUseCase.getTeams().asStream(),
      (gamesResult, standings) {
        return gamesResult.mapValue((games) {
          final standingsByTeamId = Map<int, TeamStandings>.fromIterable(
            standings.valueOrNull ?? [],
            key: (team) => team.teamId,
          );

          return games.mapList((game) => _toGameItem(game, standingsByTeamId));
        });
      },
    );
  }

  GameItem _toGameItem(Game game, Map<int, TeamStandings> standingsByTeamId) {
    return GameItem(
      game: game,
      formattedDate:
          _formatGameDateUseCase(game.scheduledDateTime ?? game.leagueDate),
      homeTeamStandings: standingsByTeamId[game.homeTeam.id],
      visitorTeamStandings: standingsByTeamId[game.visitorTeam.id],
    );
  }
}
