import 'package:flutternba/domain/date/league_dates_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_games_state.freezed.dart';

@freezed
sealed class LeagueGamesState with _$LeagueGamesState {
  const factory LeagueGamesState.loading(
    LeagueDatesModel datesModel,
  ) = LoadingState;

  const factory LeagueGamesState.noGamesAvailable(
    LeagueDatesModel datesModel,
  ) = NoGamesAvailableState;

  const factory LeagueGamesState.error(
    LeagueDatesModel datesModel,
  ) = ErrorState;

  const factory LeagueGamesState.displayData(
    List<GameItem> games,
    LeagueDatesModel datesModel,
  ) = DisplayDataState;
}
