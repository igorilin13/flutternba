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
    required int fgm,
    required int fga,
    required int fg3pm,
    required int fg3pa,
    required int ftm,
    required int fta,
    required int reb,
    required int oreb,
    required int dreb,
    required int blk,
    required int stl,
    required int to,
  }) = _TeamStats;

  TeamStats._();

  int get fgPct => _calculatePercentage(fgm, fga);
  int get fg3Pct => _calculatePercentage(fg3pm, fg3pa);
  int get ftPct => _calculatePercentage(ftm, fta);

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
    String? startPosition,
    required String jersey,
    required int min,
    required int pts,
    required int fgm,
    required int fga,
    required int fg3pm,
    required int fg3pa,
    required int ftm,
    required int fta,
    required int reb,
    required int oreb,
    required int dreb,
    required int blk,
    required int stl,
    required int to,
  }) = _PlayerStats;

  factory PlayerStats.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsFromJson(json);
}
