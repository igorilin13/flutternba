import 'package:flutternba/data/teams/stats/team_season_stats_model.dart';
import 'package:flutternba/data/teams/team_model.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_season_stats_models.freezed.dart';

enum TeamStatCategory {
  points(UiStrings.statPoints),
  pointsAgainst(UiStrings.statPointsAgainst, isDescending: false),
  fgMade(UiStrings.statFgMade),
  fgAttempts(UiStrings.statFgAttempted),
  fgPct(UiStrings.statFgPct),
  threePtMade(UiStrings.statThreePtMade),
  threePtAttempts(UiStrings.statThreePtAttempted),
  threePtPct(UiStrings.statThreePtPct),
  ftMade(UiStrings.statFtMade),
  ftAttempts(UiStrings.statFtAttempted),
  ftPct(UiStrings.statFtPct),
  rebounds(UiStrings.statRebounds),
  offRebounds(UiStrings.statOffRebounds),
  defRebounds(UiStrings.statDefRebounds),
  blocks(UiStrings.statBlocks),
  steals(UiStrings.statSteals),
  turnovers(UiStrings.statTurnovers, isDescending: false),
  assists(UiStrings.statAssists);

  final String title;
  final bool isDescending;

  const TeamStatCategory(this.title, {this.isDescending = true});

  double getValue(TeamSeasonStats stats) {
    return switch (this) {
      points => stats.points,
      pointsAgainst => stats.pointsAgainst,
      fgMade => stats.fgMade,
      fgAttempts => stats.fgAttempts,
      fgPct => stats.fgPct,
      threePtMade => stats.threePtMade,
      threePtAttempts => stats.threePtAttempts,
      threePtPct => stats.threePtPct,
      ftMade => stats.ftMade,
      ftAttempts => stats.ftAttempts,
      ftPct => stats.ftPct,
      rebounds => stats.rebounds,
      offRebounds => stats.offRebounds,
      defRebounds => stats.defRebounds,
      blocks => stats.blocks,
      steals => stats.steals,
      turnovers => stats.turnovers,
      assists => stats.assists
    };
  }
}

@freezed
class TeamStatValue with _$TeamStatValue {
  const factory TeamStatValue({
    required Team team,
    required double value,
  }) = _TeamStatValue;
}

@freezed
class LeagueStatRanking with _$LeagueStatRanking {
  const factory LeagueStatRanking({
    required TeamStatCategory category,
    required List<TeamStatValue> teams,
    required int? highlightedTeamIndex,
  }) = _LeagueStatRanking;
}
