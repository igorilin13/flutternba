import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/scores/remote/box_score_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'box_score_models.freezed.dart';

@freezed
sealed class GameBoxScoreModel with _$GameBoxScoreModel {
  const factory GameBoxScoreModel.loading(Game? gameInfo) = LoadingBoxScore;

  const factory GameBoxScoreModel.scheduled(Game gameInfo) = ScheduledGame;

  const factory GameBoxScoreModel.hasScore(
    Game gameInfo,
    TeamBoxScore home,
    TeamBoxScore away,
  ) = HasBoxScore;
}
