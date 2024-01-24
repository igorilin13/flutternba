import 'package:flutter/material.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_screen.dart';
import 'package:flutternba/ui/util/widgets/system_overlay.dart';

import '../util/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  final _screens = <Widget>[
    FavoriteTeamGamesScreen(
      onSelectFavoriteClick: () {},
    ),
    const Placeholder(),
    const Placeholder(),
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
                _currentPageIndex = index;
              });
            },
            selectedIndex: _currentPageIndex,
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
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: _screens,
            ),
          ),
        ));
  }
}
