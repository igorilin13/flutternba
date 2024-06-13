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
      final byConference = teams.groupListsBy((team) => team.conference.name);

      switch (type) {
        case StandingsType.conference:
          return [
            StandingsCollection(
              groups: byConference.entries.mapList(
                (entry) => StandingsGroup(
                  title: entry.key.capitalize(),
                  teams: entry.value
                      .sortedBy<num>((element) => element.conference.rank),
                ),
              ),
            )
          ];
        case StandingsType.division:
          return byConference.entries.mapList((entry) {
            final divisions = entry.value
                .groupListsBy((team) => team.division.name)
                .entries
                .mapList(
                  (entry) => StandingsGroup(
                    title: entry.key.capitalize(),
                    teams: entry.value
                        .sortedBy<num>((element) => element.division.rank),
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
}
