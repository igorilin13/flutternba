import 'package:collection/collection.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/data/standings/standings_repository.dart';
import 'package:flutternba/domain/standings/standings_model.dart';

class StandingsUseCase {
  final StandingsRepository _standingsRepository;

  StandingsUseCase(this._standingsRepository);

  Future<Result<List<TeamStandings>>> getTeams() {
    return getStandings(StandingsType.conference).mapResult(
      (standings) => standings
          .expand((element) => element.groups)
          .expand((element) => element.teams)
          .toList(growable: false),
    );
  }

  Future<Result<List<StandingsCollection>>> getStandings(
    StandingsType type,
  ) {
    return _standingsRepository.getStandings().mapResult((teams) {
      final byConference = teams.groupListsBy((team) => team.conferenceName);

      switch (type) {
        case StandingsType.conference:
          return [
            StandingsCollection(
              groups: byConference.entries.mapList(
                (entry) => StandingsGroup(
                  title: entry.key.capitalize(),
                  teams: _makeConferenceStandings(entry.value),
                ),
              ),
            )
          ];
        case StandingsType.division:
          return byConference.entries.mapList((entry) {
            final divisions = entry.value
                .groupListsBy((team) => team.divisionName)
                .entries
                .mapList(
                  (entry) => StandingsGroup(
                    title: entry.key.capitalize(),
                    teams: _makeDivisionStandings(entry.value),
                  ),
                );

            return StandingsCollection(
              title: entry.key.capitalize(),
              groups: divisions,
            );
          });
      }
    });
  }

  List<TeamStandings> _makeConferenceStandings(
    List<TeamStandings> teams,
  ) {
    return _calculateGamesBehind(
      teams.sortedBy<num>((element) => element.conferenceRank.rank),
      (team, gamesBehind) => team.copyWith(
        conferenceRank: team.conferenceRank.copyWith(gamesBehind: gamesBehind),
      ),
    );
  }

  List<TeamStandings> _makeDivisionStandings(
    List<TeamStandings> teams,
  ) {
    return _calculateGamesBehind(
      teams.sortedBy<num>((element) => element.divisionRank.rank),
      (team, gamesBehind) => team.copyWith(
        divisionRank: team.divisionRank.copyWith(gamesBehind: gamesBehind),
      ),
    );
  }

  // gamesBehind is calculated incorrectly in sports.io, so recalculating it here
  List<TeamStandings> _calculateGamesBehind(
    List<TeamStandings> teams,
    TeamStandings Function(TeamStandings, String?) mapper,
  ) {
    final leader = teams.firstOrNull;
    if (leader == null) {
      return teams;
    }

    return teams.mapList((team) {
      final winsDiff = leader.overallRecord.wins - team.overallRecord.wins;
      final lossesDiff =
          team.overallRecord.losses - leader.overallRecord.losses;

      final gamesBehind = (winsDiff + lossesDiff) / 2;
      String? gamesBehindString;
      if (gamesBehind > 0) {
        gamesBehindString = gamesBehind.toStringAsFixed(1);
      }
      return mapper(team, gamesBehindString);
    });
  }
}
