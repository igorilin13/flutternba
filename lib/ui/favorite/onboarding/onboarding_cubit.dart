import 'package:flutternba/ui/favorite/core/base_select_favorite_cubit.dart';

class SelectTeamOnboardingCubit extends BaseSelectFavoriteTeamCubit {
  SelectTeamOnboardingCubit(super.teamsRepository, super.settingsRepository);

  Future<bool> skipOnboarding() {
    return confirmSelection(null);
  }

  @override
  Future<void> onSelectionConfirmed() {
    return settingsRepository.setOnboardingComplete(true);
  }
}
