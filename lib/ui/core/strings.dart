import 'package:flutternba/common/util/string_ext.dart';

class UiStrings {
  static const String titleSelectTeam = "Select your team";
  static const String actionSkipOnboarding = "Later";
  static const String actionConfirm = "Confirm";
  static const String actionChooseTeam = "Choose team";
  static String actionShowAll = "Show all";
  static const String teamListLoadError = "Error loading teams.\nTap to retry";
  static const String gameListLoadError = "Error loading games.\ntap to retry";
  static const String upcomingGamesLoadError = "Error loading upcoming games";
  static const String previousGamesLoadError = "Error loading previous games";
  static const String noGamesMessage =
      "Looks like it's a quiet day – no games on the schedule";
  static const String noFavoriteTeamMessage =
      "Select your favorite team to personalize your experience";
  static const String sectionNextGame = "Next Game";
  static const String sectionPreviousGame = "Previous Game";
  static const String sectionUpcomingGames = "Upcoming";
  static const String sectionPreviousGames = "Previous";
  static const String versus = "vs";
  static const String navigationStandings = "Standings";
  static const String navigationFavorite = "My Team";
  static const String navigationLeague = "League";
  static const String navigationSettings = "Settings";
  static const String titleToday = "Today";
  static const String titleSettings = "Settings";
  static const String settingHideScores = "Hide scores";
  static const String settingFavoriteTeam = "Favorite team";
  static const String today = "Today";
  static const String yesterday = "Yesterday";
  static const String tomorrow = "Tomorrow";
  static const String filterStandingsConference = "Conference";
  static const String filterStandingsDivision = "Division";
  static const String filterStandingsPlayoffs = "Playoffs";
  static const String standingsLoadError =
      "Oops, couldn't load standings;\ntap to retry";
  static const String standingsHideScoresMessage =
      "Heads up! You're in 'Hide scores' mode,\nand standings may reveal spoilers.\nContinue anyway?";
  static const String actionRevealStandings = "Show standings";
  static const String standingsColumnWins = "W";
  static const String standingsColumnLosses = "L";
  static const String standingsColumnWinPercentage = "PCT";
  static const String standingsColumnGamesBehind = "GB";
  static const String shortLabelWin = "W";
  static const String shortLabelLoss = "L";
  static const String captionLastTen = "Last Ten";
  static const String captionStreak = "Streak";
  static const String boxScoreLoadError =
      "Couldn't load the game.\nTap to retry";
  static const String boxScoreGameNotStarted =
      "Come back for stats after the game starts";
  static const String titleTeamStats = "Team stats";
  static const String statFieldGoals = "FG";
  static const String statThreePointers = "3PT";
  static const String statFreeThrows = "FT";
  static const String statRebounds = "OReb + DReb";
  static const String statSteals = "Steals";
  static const String statBlocks = "Blocks";
  static const String statTurnovers = "Turnovers";
  static const String statAssists = "Assists";
  static const String statAbbrMinutes = "Min";
  static const String statAbbrPoints = "Pts";
  static const String statAbbrFieldGoals = "FG";
  static const String statAbbrThreePointers = "3PT";
  static const String statAbbrRebounds = "Reb";
  static const String statAbbrAssists = "Ast";
  static const String boxScoreHideScoreOnMessage =
      "You're in 'Hide scores' mode.\nContinue anyway?";
  static const String actionRevealBoxScore = "Show box score";

  static String playoffWithDateFormat(String date) => "$date • Playoffs";

  static String teamRecordCaptionFormat(int wins, int losses) =>
      "(${teamRecordFormat(wins, losses)})";

  static String teamRecordFormat(int wins, int losses) => "$wins - $losses";

  static String todayTimeFormat(String time) => "Today, $time";

  static String tomorrowTimeFormat(String time) => "Tomorrow, $time";

  static String conferencePositionCaption(int rank, String conferenceName) =>
      "${toOrdinal(rank)} in the ${conferenceName.capitalize()}";

  static String toOrdinal(int number) {
    if (number <= 0) {
      return number.toString();
    }

    if (number % 100 >= 11 && number % 100 <= 13) {
      return '${number}th';
    }

    switch (number % 10) {
      case 1:
        return '${number}st';
      case 2:
        return '${number}nd';
      case 3:
        return '${number}rd';
      default:
        return '${number}th';
    }
  }

  static String teamStreak(int streak, bool isWin) {
    final streakType = isWin ? "W" : "L";
    return "$streakType$streak";
  }

  static String playoffRoundName(int id) {
    switch (id) {
      case 0:
        return "First Round";
      case 1:
        return "Conference Semifinals";
      case 2:
        return "Conference Finals";
      case 3:
        return "NBA Finals";
      default:
        throw ArgumentError.value(id, "id", "Invalid playoff round id");
    }
  }
}