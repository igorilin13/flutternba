import 'package:collection/collection.dart';
import 'package:flutternba/common/util/bool_ext.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/domain/standings/standings_model.dart';

class MakeStandingsUseCase {
  List<StandingsCollection> call(
    List<TeamStandings> teams,
    StandingsType type,
    int? favoriteTeamId,
  ) {
    final conferenceTeams = groupTeamsListBy(
      teams,
      favoriteTeamId,
      (team) => team.conference.id,
    );

    switch (type) {
      case StandingsType.conference:
        return [
          StandingsCollection(
            groups: _makeStandingsGroups(
              conferenceTeams,
              (team) => team.conference,
            ),
          ),
        ];
      case StandingsType.division:
        return conferenceTeams.mapList((teams) {
          final divisionTeams = groupTeamsListBy(
            teams,
            favoriteTeamId,
            (team) => team.division.id,
          );

          return StandingsCollection(
            title: teams[0].conference.name,
            groups: _makeStandingsGroups(
              divisionTeams,
              (team) => team.division,
            ),
          );
        });
      case StandingsType.playoffs:
        throw Exception("Not supported");
    }
  }

  List<List<TeamStandings>> groupTeamsListBy(
    List<TeamStandings> teams,
    int? favoriteTeamId,
    int Function(TeamStandings) keySelector,
  ) {
    return teams.groupListsBy(keySelector).values.sortedByDescending((teams) {
      return teams.any((team) => team.id == favoriteTeamId).asInt;
    });
  }

  List<StandingsGroup> _makeStandingsGroups(
    List<List<TeamStandings>> conferences,
    TeamRank Function(TeamStandings) teamRankSelector,
  ) {
    return conferences.mapList((teams) => StandingsGroup(
          title: teamRankSelector(teams[0]).name,
          teams:
              teams.sortedBy<num>((element) => teamRankSelector(element).rank),
        ));
  }
}
