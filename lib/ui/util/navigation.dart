import 'package:flutter/material.dart';

import '../favorite/change/change_favorite_screen.dart';
import '../home/home_screen.dart';

class Navigation {
  static void openHome(BuildContext context) {
    Navigator.restorablePush(context, _buildHomeRoute);
  }

  static void openFavoriteTeamSelection(BuildContext context) {
    Navigator.restorablePush(context, _buildFavoriteTeamSelectionRoute);
  }

  @pragma('vm:entry-point')
  static Route<void> _buildFavoriteTeamSelectionRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => ChangeFavoriteTeamScreen(
        onSelectionComplete: (teamId) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.pop(context);
          });
        },
      ),
    );
  }

  @pragma('vm:entry-point')
  static Route<void> _buildHomeRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => const HomeScreen(),
    );
  }
}
