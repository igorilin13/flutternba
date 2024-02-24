import 'package:flutter/material.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_screen.dart';
import 'package:flutternba/ui/games/league/league_games_screen.dart';
import 'package:flutternba/ui/settings/settings_screen.dart';
import 'package:flutternba/ui/util/widgets/system_overlay.dart';

import '../util/strings.dart';

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
  final PageController _pageController = PageController();
  final _currentPageIndex = RestorableInt(0);

  final _screens = <Widget>[
    const FavoriteTeamGamesScreen(),
    const LeagueGamesScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SystemUiOverlay(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            _pageController.jumpToPage(index);
            setState(() {
              _currentPageIndex.value = index;
            });
          },
          selectedIndex: _currentPageIndex.value,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: UiStrings.navigationFavorite,
            ),
            NavigationDestination(
              icon: Icon(Icons.list),
              label: UiStrings.navigationLeague,
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: UiStrings.navigationSettings,
            ),
          ],
        ),
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
            children: _screens,
          ),
        ),
      ),
    );
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
