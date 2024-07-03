class AssetPaths {
  static String teamLogo(int teamId, bool isDarkTheme) {
    if (isDarkTheme && teamId == 29) {
      return "assets/images/team_logos/dark/logo$teamId.png";
    }
    return "assets/images/team_logos/logo$teamId.png";
  }
}