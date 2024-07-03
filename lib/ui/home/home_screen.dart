import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternba/common/util/collections_ext.dart';
import 'package:flutternba/ui/core/components/system_overlay.dart';
import 'package:flutternba/ui/core/strings.dart';
import 'package:flutternba/ui/games/league/league_games_screen.dart';
import 'package:flutternba/ui/games/team/favorite/favorite_games_screen.dart';
import 'package:flutternba/ui/settings/settings_screen.dart';
import 'package:flutternba/ui/standings/standings_screen.dart';

enum _NavigationItem {
  standings(
    Icons.format_list_numbered,
    UiStrings.navigationStandings,
    StandingsScreen(),
  ),
  favorite(
    Icons.favorite,
    UiStrings.navigationFavorite,
    FavoriteTeamGamesScreen(),
  ),
  league(
    Icons.event,
    UiStrings.navigationLeague,
    LeagueGamesScreen(),
  ),
  settings(
    Icons.settings,
    UiStrings.navigationSettings,
    SettingsScreen(),
  );

  final IconData icon;
  final String label;
  final Widget screen;

  const _NavigationItem(this.icon, this.label, this.screen);
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static void navigate(BuildContext context) {
    Navigator.restorablePush(context, _buildRoute);
  }

  @pragma('vm:entry-point')
  static Route<void> _buildRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => const HomeScreen(),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> with RestorationMixin {
  final PageController _pageController = PageController(initialPage: 1);
  final _currentPageIndex = RestorableInt(1);

  @override
  Widget build(BuildContext context) {
    return NbaSystemUiOverlay(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Scaffold(
        bottomNavigationBar: _buildNavigationBar(context),
        body: SafeArea(
          child: PageView(
            restorationId: "homeScreenContent",
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex.value = index;
              });
            },
            children: _NavigationItem.values.mapList((item) => item.screen),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationBar(BuildContext context) {
    onItemTap(int index) {
      _pageController.jumpToPage(index);
      setState(() {
        _currentPageIndex.value = index;
      });
    }

    if (Platform.isIOS) {
      return CupertinoTabBar(
        currentIndex: _currentPageIndex.value,
        iconSize: 26.0,
        onTap: onItemTap,
        items: _NavigationItem.values.mapList(
          (item) => BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: item.label,
          ),
        ),
      );
    } else {
      return NavigationBar(
        onDestinationSelected: onItemTap,
        selectedIndex: _currentPageIndex.value,
        destinations: _NavigationItem.values.mapList(
          (item) => NavigationDestination(
            icon: Icon(item.icon),
            label: item.label,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  String? get restorationId => "homeScreen";

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentPageIndex, "currentPage");
  }
}
