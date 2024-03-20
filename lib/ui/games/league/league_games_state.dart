import 'package:flutternba/domain/games/game_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_games_state.freezed.dart';

@freezed
sealed class LeagueGamesState {
  const factory LeagueGamesState.loading() = LoadingState;
  const factory LeagueGamesState.noGamesAvailable() = NoGamesAvailableState;
  const factory LeagueGamesState.error() = ErrorState;
  const factory LeagueGamesState.displayData(List<GameItem> games) =
      DisplayDataState;
}
