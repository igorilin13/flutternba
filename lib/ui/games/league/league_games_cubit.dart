import 'package:flutternba/common/util/async_ext.dart';
import 'package:flutternba/common/util/result.dart';
import 'package:flutternba/domain/date/get_league_dates.dart';
import 'package:flutternba/domain/date/league_dates_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/games/league/get_league_games.dart';
import '../../util/bloc/base_cubit.dart';
import 'league_games_state.dart';

class LeagueGamesCubit extends BaseCubit<LeagueGamesState> {
  final GetLeagueGamesUseCase _getLeagueGamesUseCase;
  final GetLeagueDatesUseCase _getLeagueDatesUseCase;

  final BehaviorSubject<DateTime> selectedDate =
      BehaviorSubject.seeded(DateTime.now());

  LeagueGamesCubit(
    this._getLeagueGamesUseCase,
    this._getLeagueDatesUseCase,
  ) : super(LeagueGamesState.loading(_getLeagueDatesUseCase(DateTime.now()))) {
    disposeControllersOnClose([selectedDate]);
  }

  @override
  Stream<LeagueGamesState> buildStateStream() {
    return selectedDate.switchMap((date) {
      return _getLeagueGamesUseCase(date)
          .nullable()
          .startWith(null)
          .map((result) => _mapToState(result, _getLeagueDatesUseCase(date)));
    });
  }

  LeagueGamesState _mapToState(
    Result<List<GameItem>>? result,
    LeagueDatesModel datesModel,
  ) {
    if (result == null) {
      return LeagueGamesState.loading(datesModel);
    }

    return result.fold(
      onSuccess: (games) {
        if (games.isNotEmpty) {
          return LeagueGamesState.displayData(games, datesModel);
        } else {
          return LeagueGamesState.noGamesAvailable(datesModel);
        }
      },
      onFailure: (_) => LeagueGamesState.error(datesModel),
    );
  }

  void selectNextDay() {
    _changeDay(1);
  }

  void selectPreviousDay() {
    _changeDay(-1);
  }

  void selectDate(DateTime date) {
    selectedDate.add(date);
  }

  void _changeDay(int diff) {
    final newDate = selectedDate.value.add(Duration(days: diff));
    selectedDate.add(newDate);
  }
}
