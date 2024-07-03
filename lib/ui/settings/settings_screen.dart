import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/ui/core/components/header_item.dart';
import 'package:flutternba/ui/core/components/team_logo.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/favorite/change/change_favorite_screen.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:flutternba/ui/settings/settings_state.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with AutomaticKeepAliveClientMixin {
  static const double _settingHorizontalPadding = 16;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NbaHeaderItem(text: UiStrings.titleSettings),
              const SizedBox(height: 8),
              Card(
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    if (state.shouldHideScores != null) ...[
                      buildHideScoresSetting(
                        context,
                        state.shouldHideScores!,
                        context.read<SettingsCubit>().setHideScores,
                      ),
                      const Divider(height: 0.5, thickness: 0.5),
                    ],
                    buildFavoriteTeamSetting(
                      context,
                      state.favoriteTeamState,
                      () => ChangeFavoriteTeamScreen.navigate(context),
                    )
                  ],
                ),
              ),
            ],
          ),
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
      padding: const EdgeInsets.symmetric(
        horizontal: _settingHorizontalPadding,
        vertical: 4,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              UiStrings.settingHideScores,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Switch.adaptive(value: value, onChanged: onChanged)
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
        padding: const EdgeInsets.symmetric(
          horizontal: _settingHorizontalPadding,
          vertical: 16,
        ),
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
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator.adaptive(strokeWidth: 2),
          ),
        );
      case FavoriteTeamErrorState() || NoFavoriteTeamState():
        return const Icon(Icons.chevron_right);
      case HasFavoriteTeamState():
        return Row(
          children: [
            NbaTeamLogo(teamId: state.team.id, size: 28),
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
