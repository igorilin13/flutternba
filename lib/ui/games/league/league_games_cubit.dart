import 'package:flutternba/common/util/async_ext.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/games/league/get_league_games.dart';
import '../../util/bloc/base_cubit.dart';
import 'league_games_state.dart';

class LeagueGamesCubit extends BaseCubit<LeagueGamesState> {
  final GetLeagueGamesUseCase _getLeagueGamesUseCase;

  LeagueGamesCubit(this._getLeagueGamesUseCase)
      : super(const LeagueGamesState.loading());

  @override
  Stream<LeagueGamesState> buildStateStream() {
    return (_getLeagueGamesUseCase()).asNullableStream().startWith(null).map(
          (result) =>
              result?.fold(
                onSuccess: (games) {
                  if (games.isNotEmpty) {
                    return LeagueGamesState.displayData(games);
                  } else {
                    return const LeagueGamesState.noGamesAvailable();
                  }
                },
                onFailure: (_) => const LeagueGamesState.error(),
              ) ??
              const LeagueGamesState.loading(),
        );
  }
}
