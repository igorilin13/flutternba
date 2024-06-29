import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:flutternba/ui/settings/settings_state.dart';
import 'package:flutternba/ui/util/strings.dart';
import 'package:flutternba/ui/util/widgets/team_logo.dart';

import '../favorite/change/change_favorite_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                UiStrings.titleSettings,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            if (state.shouldHideScores != null)
              buildHideScoresSetting(
                context,
                state.shouldHideScores!,
                (value) => context.read<SettingsCubit>().setHideScores(value),
              ),
            const SizedBox(height: 12),
            buildFavoriteTeamSetting(
              context,
              state.favoriteTeamState,
              () => ChangeFavoriteTeamScreen.navigate(context),
            )
          ],
        );
      },
    );
  }

  Widget buildHideScoresSetting(
    BuildContext context,
    bool value,
    void Function(bool) onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              UiStrings.settingHideScores,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Switch(value: value, onChanged: onChanged)
        ],
      ),
    );
  }

  Widget buildFavoriteTeamSetting(
    BuildContext context,
    FavoriteTeamSettingState state,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 16, top: 8, bottom: 8),
        child: Row(
          children: [
            Expanded(
              child: Text(
                UiStrings.settingFavoriteTeam,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            buildFavoriteTeamSettingValue(context, state)
          ],
        ),
      ),
    );
  }

  Widget buildFavoriteTeamSettingValue(
    BuildContext context,
    FavoriteTeamSettingState state,
  ) {
    switch (state) {
      case LoadingFavoriteTeamState():
        return const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );
      case FavoriteTeamErrorState():
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            UiStrings.favoriteTeamError,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        );
      case NoFavoriteTeamState():
        return Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Text(
            UiStrings.noFavoriteTeamValue,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        );
      case HasFavoriteTeamState():
        return Row(
          children: [
            TeamLogo(teamId: state.team.id, height: 32),
            const SizedBox(width: 4),
            Text(
              state.team.name,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        );
    }
  }

  @override
  bool get wantKeepAlive => true;
}
