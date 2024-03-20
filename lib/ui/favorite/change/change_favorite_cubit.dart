import '../core/base_select_favorite_cubit.dart';

class ChangeFavoriteTeamCubit extends BaseSelectFavoriteTeamCubit {
  ChangeFavoriteTeamCubit(super.teamsRepository, super.settingsRepository);

  @override
  void confirmSelection(int? teamId) async {
    if (teamId != null) {
      await saveSelectedTeam(teamId);
    }
    completeSelection();
  }
}
