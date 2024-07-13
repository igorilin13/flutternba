import 'package:flutternba/data/teams/team_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playoff_series_model.freezed.dart';

@freezed
class PlayoffSeriesGames with _$PlayoffSeriesGames {
  const factory PlayoffSeriesGames({
    required List<PlayoffGameItem> items,
    required Team homeTeam,
    required Team visitorTeam,
    required int homeTeamWins,
    required int visitorTeamWins,
    required bool isFinished,
  }) = _PlayoffSeriesGames;
}

@freezed
class PlayoffGameItem with _$PlayoffGameItem {
  const factory PlayoffGameItem({
    required GameItem item,
    required int gameNumber,
  }) = _PlayoffGameItem;
}
