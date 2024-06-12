import 'package:flutternba/data/games/game_model.dart';
import 'package:flutternba/domain/games/game_item.dart';
import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

mixin FinishedGamesControllerMixin {
  final PagingController<GamesPageKey?, GameItem> finishedGamesController =
      PagingController(firstPageKey: null);

  void bindFinishedGames(TeamGamesState state) {
    if (state is DisplayDataState) {
      finishedGamesController.value = PagingState(
        nextPageKey: state.previousGames?.nextKey,
        error: state.previousGamesPageError,
        itemList: state.previousGames?.items,
      );
    }
  }
}
