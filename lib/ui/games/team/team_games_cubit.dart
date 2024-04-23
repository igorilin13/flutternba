import 'package:flutternba/domain/games/team/get_team_games.dart';
import 'package:flutternba/domain/standings/get_standings.dart';
import 'package:flutternba/ui/games/team/base/base_team_games_cubit.dart';

import 'base/team_games_state.dart';

class TeamGamesCubit extends BaseTeamGamesCubit<TeamGamesState> {
  final int _teamId;
  final GetTeamGamesUseCase _getTeamGamesUseCase;

  TeamGamesCubit(
    this._teamId,
    this._getTeamGamesUseCase,
    GetStandingsUseCase getStandingsUseCase,
  ) : super(const TeamGamesState.loading(), getStandingsUseCase);

  @override
  Stream<TeamGamesState> buildStateStream() {
    return buildTeamGamesStateStream(
      teamId: _teamId,
      gamesStream: _getTeamGamesUseCase(_teamId),
    );
  }
}
