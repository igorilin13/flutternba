import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/ui/util/strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standings_model.freezed.dart';

enum StandingsType {
  conference(UiStrings.filterStandingsConference),
  division(UiStrings.filterStandingsDivision);

  const StandingsType(this.displayName);

  final String displayName;
}

@freezed
class StandingsCollection with _$StandingsCollection {
  const factory StandingsCollection({
    String? title,
    required List<StandingsGroup> groups,
  }) = _StandingsCollection;

  const StandingsCollection._();

  Set<int> get teamIds => groups.expand((e) => e.teamIds).toSet();
}

@freezed
class StandingsGroup with _$StandingsGroup {
  const factory StandingsGroup({
    required String title,
    required List<TeamStandings> teams,
  }) = _StandingsGroup;

  const StandingsGroup._();

  Set<int> get teamIds => teams.map((e) => e.teamId).toSet();
}
