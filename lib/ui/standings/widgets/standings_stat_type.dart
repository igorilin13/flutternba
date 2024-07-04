import 'package:flutternba/data/standings/standings_model.dart';
import 'package:flutternba/ui/core/strings.dart';

enum StandingsStatType {
  wins(UiStrings.standingsColumnWins),
  losses(UiStrings.standingsColumnLosses),
  winPercentage(UiStrings.standingsColumnWinPercentage),
  gamesBehind(UiStrings.standingsColumnGamesBehind);

  final String label;

  const StandingsStatType(this.label);

  String getValue(WinLossRecord record, String? gamesBehind) {
    return switch (this) {
      StandingsStatType.wins => record.win.toString(),
      StandingsStatType.losses => record.loss.toString(),
      StandingsStatType.winPercentage =>
        record.percentage.toStringAsFixed(3).substring(1),
      StandingsStatType.gamesBehind => gamesBehind ?? "-",
    };
  }
}
