import 'package:flutternba/common/util/string_ext.dart';

class UiStrings {
  static const String appTitle = "BBall Schedules";
  static const String titleSelectTeam = "Select your team";
  static const String actionSkipOnboarding = "Later";
  static const String actionConfirm = "Confirm";
  static const String actionChooseTeam = "Choose team";
  static const String actionRetry = "Retry";
  static const String actionSelectAnotherDate = "Select date";
  static String actionShowAll = "Show all";
  static const String genericErrorTitle = "Something went wrong";
  static const String teamListLoadError = "Error loading teams.";
  static const String gameListLoadError = "Error loading games.";
  static const String playoffSeriesLoadError =
      "Error loading games for this series.";
  static const String upcomingGamesLoadError = "Error loading upcoming games";
  static const String previousGamesLoadError = "Error loading previous games";
  static const String noLeagueGamesMessage = "There are no games on this day.";
  static const String noTeamGamesTitle = "Check back later";
  static const String noTeamGamesMessage = "Games will be added here soon.";
  static const String noFavoriteTeamMessage = "No favorite selected";
  static const String sectionNextGame = "Next Game";
  static const String sectionRecentGame = "Recent Game";
  static const String sectionUpcomingGames = "Upcoming";
  static const String sectionPreviousGames = "Previous";
  static const String noUpcomingGamesMessage = "No upcoming games";
  static const String versus = "vs";
  static const String navigationStandings = "Standings";
  static const String navigationFavorite = "Favorite";
  static const String navigationLeague = "League";
  static const String navigationTeamStats = "Stats";
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
  static const String standingsLoadError = "Error loading standings.";
  static const String teamStatsErrorMessage = "Error loading team stats.";
  static const String standingsHideScoresMessage =
      "Hide scores mode is on and standings may reveal spoilers.\nContinue anyway?";
  static const String teamStatsHideScoresMessage =
      "Hide scores mode is on and stats may reveal spoilers.\nContinue anyway?";
  static const String actionRevealStandings = "Show standings";
  static const String actionRevealStats = "Show stats";
  static const String standingsColumnWins = "W";
  static const String standingsColumnLosses = "L";
  static const String standingsColumnWinPercentage = "PCT";
  static const String standingsColumnGamesBehind = "GB";
  static const String shortLabelWin = "W";
  static const String shortLabelLoss = "L";
  static const String boxScoreLoadError = "Error loading box score.";
  static const String boxScoreGameNotStarted =
      "Come back for stats after the game starts";
  static const String titleTeamStats = "Team stats";
  static const String statAbbrFreeThrows = "FT";
  static const String statReboundsCombined = "OReb + DReb";
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
  static const String statPoints = "Points";
  static const String statPointsAgainst = "Points Against";
  static const String statFgMade = "Field Goals Made";
  static const String statFgAttempted = "Field Goals Attempted";
  static const String statFgPct = "Field Goal %";
  static const String statThreePtMade = "3-Pointers Made";
  static const String statThreePtAttempted = "3-Pointers Attempted";
  static const String statThreePtPct = "3-Point %";
  static const String statFtMade = "Free Throws Made";
  static const String statFtAttempted = "Free Throws Attempted";
  static const String statFtPct = "Free Throw %";
  static const String statRebounds = "Rebounds";
  static const String statOffRebounds = "Offensive Rebounds";
  static const String statDefRebounds = "Defensive Rebounds";
  static const String boxScoreHideScoreOnMessage =
      "Hide scores mode is on.\nContinue anyway?";
  static const String actionRevealBoxScore = "Show score";
  static const String linkPrivacyPolicy = "Privacy Policy";
  static const String gameRemindersSettingTitle = "Game reminders";
  static const String gameRemindersSettingDescription =
      "Receive a notification when your favorite team plays.";
  static const String gameRemindersChannelName = "Game reminders";
  static const String gameRemindersChannelDescription =
      gameRemindersSettingDescription;
  static const String confirmSelectionInProgress = "Saving your selection";
  static const String screenTitleTeamStats = "Team Stats";
  static const String hintSearchTeams = "Search teams";

  static String playoffWithDateFormat(String date) => "$date • Playoffs";

  static String teamRecordCaptionFormat(int wins, int losses) =>
      "(${teamRecordFormat(wins, losses)})";

  static String teamRecordFormat(int wins, int losses) => "$wins - $losses";

  static String todayTimeFormat(String time) => "Today, $time";

  static String tomorrowTimeFormat(String time) => "Tomorrow, $time";

  static String conferencePositionCaption(int rank, String conferenceName) =>
      "${toOrdinal(rank)} in the ${conferenceName.capitalize()} Conference";

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

  static String playoffRoundNameShort(int id) {
    switch (id) {
      case 0:
        return "First Round";
      case 1:
        return "Conf. Semis";
      case 2:
        return "Conf. Finals";
      case 3:
        return "NBA Finals";
      default:
        throw ArgumentError.value(id, "id", "Invalid playoff round id");
    }
  }

  static String matchupTitle(String team1, String team2) => "$team1 vs $team2";

  static String playoffGameTitle(int gameNumber) => "Game $gameNumber";

  static String playoffSeriesTied(int wins) => "Series tied $wins-$wins";

  static String playoffSeriesLeader(
    String winnerName,
    int wins,
    int losses,
    bool isFinished,
  ) {
    return "$winnerName ${isFinished ? "wins" : "leads"} $wins-$losses";
  }
}
