class UiStrings {
  static const String titleSelectTeam = "Select your team";
  static const String actionSkipOnboarding = "Later";
  static const String actionCompleteOnboarding = "Let's Go";
  static const String actionConfirm = "Confirm";
  static const String actionChooseTeam = "Choose team";
  static const String teamListLoadError =
      "Oops, couldn't fetch teams;\ntap to retry";
  static const String gameListLoadError =
      "Oops, couldn't load games;\ntap to retry";
  static const String noGamesMessage =
      "Looks like it's a quiet day – no games on the schedule";
  static const String noFavoriteTeamMessage =
      "Select your favorite team to personalize your experience";
  static const String sectionNextGame = "Next Game";
  static const String sectionPreviousGame = "Previous Game";
  static const String sectionUpcomingGames = "Upcoming";
  static const String sectionPreviousGames = "Previous";

  static String playoffWithDateFormat(String date) => "$date • Playoffs";
  static const String versus = "vs";
  static const String navigationStandings = "Standings";
  static const String navigationFavorite = "My Team";
  static const String navigationLeague = "League";
  static const String navigationSettings = "Settings";
  static const String titleToday = "Today";
  static const String titleSettings = "Settings";
  static const String settingHideScores = "Hide scores";
  static const String settingFavoriteTeam = "My team";
  static const String favoriteTeamError = "Error";
  static const String noFavoriteTeamValue = "-";
  static const String yesterday = "Yesterday";

  static String todayFormat(String time) => "Today, $time";

  static String tomorrowFormat(String time) => "Tomorrow, $time";
  static const String filterStandingsConference = "Conference";
  static const String filterStandingsDivision = "Division";
  static const String standingsLoadError =
      "Oops, couldn't load standings;\ntap to retry";
  static const String standingsHideScoresMessage =
      "Heads up! You're in 'Hide scores' mode,\nand standings may reveal spoilers.\nContinue anyway?";
  static const String actionRevealStandings = "Go ahead";
  static const String standingsColumnWins = "W";
  static const String standingsColumnLosses = "L";
  static const String standingsColumnWinPercentage = "PCT";
  static const String standingsColumnGamesBehind = "GB";
}
