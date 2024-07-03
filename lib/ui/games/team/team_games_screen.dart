import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:flutternba/ui/games/team/base/widgets/team_games_mixin.dart';
import 'package:flutternba/ui/games/team/base/widgets/team_games_view.dart';
import 'package:flutternba/ui/games/team/team_games_cubit.dart';

class TeamGamesScreen extends StatefulWidget {
  final int teamId;

  const TeamGamesScreen({super.key, required this.teamId});

  @override
  State<TeamGamesScreen> createState() => _TeamGamesScreenState();

  static void navigate(BuildContext context, int teamId) {
    Navigator.restorablePush(context, _buildRoute, arguments: teamId);
  }

  @pragma('vm:entry-point')
  static Route<void> _buildRoute(
    BuildContext context,
    Object? arguments,
  ) {
    final teamId = arguments as int;
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => TeamGamesScreen(teamId: teamId),
    );
  }
}

class _TeamGamesScreenState extends State<TeamGamesScreen>
    with FinishedGamesControllerMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamGamesCubit(widget.teamId, locator(), locator()),
      child: BlocConsumer<TeamGamesCubit, TeamGamesState>(
          builder: (context, state) => TeamGamesView<TeamGamesCubit>(
                restorationId: 'teamGames',
                gamesState: state,
                finishedGamesController: finishedGamesController,
                showBackButton: true,
              ),
          listener: (context, state) => bindFinishedGames(state)),
    );
  }
}
