import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'box_score_models.freezed.dart';
part 'box_score_models.g.dart';

@freezed
class GameBoxScore with _$GameBoxScore {
  factory GameBoxScore({
    required Game game,
    required TeamBoxScore? home,
    required TeamBoxScore? away,
  }) = _GameBoxScore;

  factory GameBoxScore.fromJson(Map<String, dynamic> json) =>
      _$GameBoxScoreFromJson(json);
}

@freezed
class TeamBoxScore with _$TeamBoxScore {
  factory TeamBoxScore({
    required TeamStats team,
    required WinLossRecord? record,
    required List<PlayerStats> players,
  }) = _TeamBoxScore;

  factory TeamBoxScore.fromJson(Map<String, dynamic> json) =>
      _$TeamBoxScoreFromJson(json);
}

@freezed
class TeamStats with _$TeamStats {
  factory TeamStats({
    required int id,
    required int fgMade,
    required int fgAttempts,
    required int threePtMade,
    required int threePtAttempts,
    required int ftMade,
    required int ftAttempts,
    required int rebounds,
    required int offRebounds,
    required int defRebounds,
    required int blocks,
    required int steals,
    required int turnovers,
    required int assists,
  }) = _TeamStats;

  TeamStats._();

  int get fgPct => _calculatePercentage(fgMade, fgAttempts);
  int get threePtPct => _calculatePercentage(threePtMade, threePtAttempts);
  int get ftPct => _calculatePercentage(ftMade, ftAttempts);

  int _calculatePercentage(int made, int attempts) =>
      attempts == 0 ? 0 : (100 * made / attempts).round();

  factory TeamStats.fromJson(Map<String, dynamic> json) =>
      _$TeamStatsFromJson(json);
}

@freezed
class PlayerStats with _$PlayerStats {
  factory PlayerStats({
    required int id,
    required String firstName,
    required String lastName,
    required String jersey,
    required int minutes,
    required int points,
    required int fgMade,
    required int fgAttempts,
    required int threePtMade,
    required int threePtAttempts,
    required int ftMade,
    required int ftAttempts,
    required int rebounds,
    required int offRebounds,
    required int defRebounds,
    required int blocks,
    required int steals,
    required int turnovers,
    required int assists,
  }) = _PlayerStats;

  factory PlayerStats.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsFromJson(json);
}
