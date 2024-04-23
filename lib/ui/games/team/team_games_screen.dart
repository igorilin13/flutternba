import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/di/locator.dart';
import 'package:flutternba/ui/games/team/base/team_games_state.dart';
import 'package:flutternba/ui/games/team/base/widgets/team_games_view.dart';
import 'package:flutternba/ui/games/team/team_games_cubit.dart';

class TeamGamesScreen extends StatelessWidget {
  final int teamId;

  const TeamGamesScreen({super.key, required this.teamId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamGamesCubit(teamId, locator(), locator()),
      child: BlocBuilder<TeamGamesCubit, TeamGamesState>(
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: TeamGamesView<TeamGamesCubit>(
              restorationId: 'teamGames',
              gamesState: state,
            ),
          ),
        ),
      ),
    );
  }

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
