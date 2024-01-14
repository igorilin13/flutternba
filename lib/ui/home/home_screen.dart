import 'package:flutter/cupertino.dart';
import 'package:flutternba/ui/games/favorite/favorite_games_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FavoriteTeamGamesScreen(onSelectFavoriteClick: () {});
  }
}
