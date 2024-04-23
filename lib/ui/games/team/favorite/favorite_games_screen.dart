import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/ui/favorite/change/change_favorite_screen.dart';
import 'package:flutternba/ui/games/team/base/widgets/team_games_view.dart';
import 'package:flutternba/ui/games/team/favorite/favorite_games_cubit.dart';
import 'package:flutternba/ui/games/team/favorite/favorite_games_state.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:flutternba/ui/util/strings.dart';
import 'package:flutternba/ui/util/widgets/cta_message.dart';

class FavoriteTeamGamesScreen extends StatefulWidget {
  const FavoriteTeamGamesScreen({super.key});

  @override
  State<FavoriteTeamGamesScreen> createState() =>
      _FavoriteTeamGamesScreenState();
}

class _FavoriteTeamGamesScreenState extends State<FavoriteTeamGamesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
      create: (context) => FavoriteTeamGamesCubit(locator(), locator()),
      child: BlocBuilder<FavoriteTeamGamesCubit, FavoriteTeamGamesState>(
          builder: (context, state) {
        final hideScores = context.select<SettingsCubit, bool>(
          (cubit) => cubit.state.shouldHideScores ?? false,
        );
        return _buildBody(context, state, hideScores);
      }),
    );
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
        child: ActionMessageDisplay(
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
