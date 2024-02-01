
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../favorite/change/change_favorite_screen.dart';
import '../home/home_screen.dart';
import '../settings/settings_provider.dart';

class Navigation {
  static void openHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  static void openFavoriteTeamSelection(BuildContext context) {
    final settingsProvider = context.read<SettingsProvider>();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangeFavoriteTeamScreen(
          onSelectionComplete: (teamId) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              Navigator.pop(context);
            });
            settingsProvider.updateFavoriteTeam(teamId);
          },
        ),
      ),
    );
  }
}