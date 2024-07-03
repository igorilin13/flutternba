import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/ui/core/components/cta_message.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/favorite/change/change_favorite_screen.dart';
import 'package:flutternba/ui/games/team/base/widgets/team_games_mixin.dart';
import 'package:flutternba/ui/games/team/base/widgets/team_games_view.dart';
import 'package:flutternba/ui/games/team/favorite/favorite_games_cubit.dart';
import 'package:flutternba/ui/games/team/favorite/favorite_games_state.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';

class FavoriteTeamGamesScreen extends StatefulWidget {
  const FavoriteTeamGamesScreen({super.key});

  @override
  State<FavoriteTeamGamesScreen> createState() =>
      _FavoriteTeamGamesScreenState();
}

class _FavoriteTeamGamesScreenState extends State<FavoriteTeamGamesScreen>
    with AutomaticKeepAliveClientMixin, FinishedGamesControllerMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
        create: (context) => FavoriteTeamGamesCubit(
              locator(),
              locator(),
              locator(),
            ),
        child: BlocConsumer<FavoriteTeamGamesCubit, FavoriteTeamGamesState>(
          builder: (context, state) {
            final hideScores = context.select<SettingsCubit, bool>(
              (cubit) => cubit.state.shouldHideScores ?? false,
            );
            return _buildBody(context, state, hideScores);
          },
          listener: (context, state) {
            if (state is HasFavoriteTeamState) {
              bindFinishedGames(state.gamesState);
            }
          },
        ));
  }

  Widget _buildBody(
    BuildContext context,
    FavoriteTeamGamesState state,
    bool hideScores,
  ) {
    switch (state) {
      case LoadingFavoriteTeamState():
        return const Center(child: CircularProgressIndicator());
      case NoFavoriteTeamState():
        return _buildNoFavoriteTeamMessage(
          context,
          () => ChangeFavoriteTeamScreen.navigate(context),
        );
      case HasFavoriteTeamState():
        return TeamGamesView<FavoriteTeamGamesCubit>(
          restorationId: 'favoriteTeamGames',
          gamesState: state.gamesState,
          finishedGamesController: finishedGamesController,
        );
    }
  }

  Widget _buildNoFavoriteTeamMessage(
    BuildContext context,
    VoidCallback onSelectClick,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NbaActionMessage(
          message: UiStrings.noFavoriteTeamMessage,
          onAction: onSelectClick,
          actionText: UiStrings.actionChooseTeam,
          icon: Icons.favorite_border,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
