import 'package:flutternba/ui/favorite/core/base_select_favorite_cubit.dart';

class SelectTeamOnboardingCubit extends BaseSelectFavoriteTeamCubit {
  SelectTeamOnboardingCubit(super.teamsRepository, super.settingsRepository);

  void skipOnboarding() async {
    confirmSelection(null);
  }

  @override
  void confirmSelection(int? teamId) async {
    if (teamId != null) {
      await saveSelectedTeam(teamId);
    }
    await settingsRepository.setOnboardingComplete(true);
    completeSelection();
  }
}
