import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/data/standings/standings_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_item.freezed.dart';

@freezed
class GameItem with _$GameItem {
  const factory GameItem({
    required Game game,
    required String formattedDate,
    required WinLossRecord? homeTeamRecord,
    required WinLossRecord? visitorTeamRecord,
  }) = _GameItem;
}
