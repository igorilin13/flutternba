import 'package:flutternba/ui/favorite/core/base_select_favorite_provider.dart';
import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';

class SelectTeamOnboardingProvider extends BaseSelectFavoriteTeamProvider {
  SelectTeamOnboardingProvider(super.teamsRepository, super.settingsRepository);

  void skipOnboarding() async {
    _completeOnboarding(false);
  }

  @override
  void confirmSelection() {
    _completeOnboarding(true);
  }

  void _completeOnboarding(bool saveSelected) async {
    int? teamId;
    if (saveSelected) {
      teamId = await saveSelectedTeam();
    }
    await settingsRepository.setOnboardingComplete(true);
    uiEventsController.add(FavoriteTeamSelectionComplete(teamId));
  }
}
