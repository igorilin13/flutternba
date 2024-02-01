import 'package:flutternba/ui/favorite/core/select_favorite_state.dart';

import '../core/base_select_favorite_provider.dart';

class ChangeFavoriteTeamProvider extends BaseSelectFavoriteTeamProvider {
  ChangeFavoriteTeamProvider(super.teamsRepository, super.settingsRepository);

  @override
  void confirmSelection() async {
    final teamId = await saveSelectedTeam();
    uiEventsController.add(FavoriteTeamSelectionComplete(teamId));
  }

}