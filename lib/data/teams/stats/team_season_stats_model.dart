import 'package:flutternba/data/teams/team_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_season_stats_model.freezed.dart';
part 'team_season_stats_model.g.dart';

@freezed
class TeamSeasonStats with _$TeamSeasonStats {
  const factory TeamSeasonStats({
    required Team team,
    required double points,
    required double pointsAgainst,
    required double fgMade,
    required double fgAttempts,
    required double threePtMade,
    required double threePtAttempts,
    required double ftMade,
    required double ftAttempts,
    required double rebounds,
    required double offRebounds,
    required double defRebounds,
    required double blocks,
    required double steals,
    required double turnovers,
    required double assists,
  }) = _TeamSeasonStats;

  const TeamSeasonStats._();

  double get fgPct => _calculatePercentage(fgMade, fgAttempts);

  double get threePtPct => _calculatePercentage(threePtMade, threePtAttempts);

  double get ftPct => _calculatePercentage(ftMade, ftAttempts);

  double _calculatePercentage(double made, double attempts) =>
      attempts == 0 ? 0 : (100 * made / attempts);

  factory TeamSeasonStats.fromJson(Map<String, dynamic> json) =>
      _$TeamSeasonStatsFromJson(json);
}
