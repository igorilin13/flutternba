import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_screen.dart';
import 'package:flutternba/ui/games/league/league_games_screen.dart';
import 'package:flutternba/ui/standings/standings_screen.dart';
import 'package:flutternba/ui/util/widgets/system_overlay.dart';

import '../../common/di/locator.dart';
import '../settings/settings_cubit.dart';
import '../settings/settings_screen.dart';
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
  final PageController _pageController = PageController(initialPage: 1);
  final _currentPageIndex = RestorableInt(1);

  final _screens = <Widget>[
    const StandingsScreen(),
    const FavoriteTeamGamesScreen(),
    const LeagueGamesScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => SettingsCubit(locator(), locator()),
        child: SystemUiOverlay(
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
                  icon: Icon(Icons.format_list_numbered),
                  label: UiStrings.navigationStandings,
                ),
                NavigationDestination(
                  icon: Icon(Icons.favorite),
                  label: UiStrings.navigationFavorite,
                ),
                NavigationDestination(
                  icon: Icon(Icons.event),
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
        ));
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
