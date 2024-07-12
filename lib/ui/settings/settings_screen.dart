import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/common/app_config.dart';
import 'package:flutternba/ui/core/components/app_bar.dart';
import 'package:flutternba/ui/core/components/progress_indicator.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/favorite/change/change_favorite_screen.dart';
import 'package:flutternba/ui/settings/settings_cubit.dart';
import 'package:flutternba/ui/settings/settings_state.dart';
import 'package:url_launcher/url_launcher.dart';

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
        return Scaffold(
          appBar: const NbaAppBar(
            showBackButton: false,
            title: Text(UiStrings.titleSettings),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                ..._buildGameRemindersSetting(
                  context,
                  state.gameRemindersState,
                ),
                const SizedBox(height: 20),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        title: const Text(UiStrings.linkPrivacyPolicy),
                        trailing: Icon(
                          Icons.launch,
                          color: _getTrailingIconColor(context),
                          size: 20,
                        ),
                        onTap: _openPrivacyPolicy,
                      ),
                    ],
                  ),
                )
              ],
            ),
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
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      title: const Text(UiStrings.settingHideScores),
      trailing: Switch.adaptive(value: value, onChanged: onChanged),
    );
  }

  Widget buildFavoriteTeamSetting(
    BuildContext context,
    FavoriteTeamSettingState state,
    VoidCallback onTap,
  ) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 16, right: 12),
      title: const Text(UiStrings.settingFavoriteTeam),
      trailing: buildFavoriteTeamSettingValue(context, state),
      onTap: onTap,
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
          child: NbaProgressIndicator(size: NbaProgressIndicatorSize.small),
        );
      case FavoriteTeamErrorState() || NoFavoriteTeamState():
        return Icon(
          Icons.chevron_right,
          color: _getTrailingIconColor(context),
        );
      case HasFavoriteTeamState():
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              state.team.name,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Icon(
              Icons.chevron_right,
              color: _getTrailingIconColor(context),
            ),
          ],
        );
    }
  }

  List<Widget> _buildGameRemindersSetting(
    BuildContext context,
    GameRemindersSettingState state,
  ) {
    final theme = Theme.of(context);

    return [
      Card(
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          title: const Text(UiStrings.gameRemindersSettingTitle),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (state.isSaving) ...[
                const NbaProgressIndicator(
                  size: NbaProgressIndicatorSize.small,
                ),
                const SizedBox(width: 8),
              ],
              Switch.adaptive(
                value: state.isTurnedOn,
                onChanged: state.isAvailable && !state.isSaving
                    ? context.read<SettingsCubit>().setGameReminders
                    : null,
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          UiStrings.gameRemindersSettingDescription,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    ];
  }

  Color _getTrailingIconColor(BuildContext context) {
    return Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.5);
  }

  void _openPrivacyPolicy() {
    final url = Uri.parse(AppConfig.privacyPolicyUrl);
    launchUrl(url);
  }

  @override
  bool get wantKeepAlive => true;
}
