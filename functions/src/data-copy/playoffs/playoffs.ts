import { GameState } from "../ball-io/ball-io-responses";
import { TeamRank, TeamStandings } from "../standings/standings-models";
import { PlayoffRound, PlayoffSeries } from "./playoffs-models";

const playoffRoundIndices = [
  [0, 7],
  [8, 11],
  [12, 13],
  [14, 14],
];

export function calculatePlayoffRounds(
  gameDocs: FirebaseFirestore.DocumentData[],
  teamStandings: TeamStandings[],
) {
  const conferenceRankByTeamId = teamStandings.reduce(
    (map, item) => {
      map[item.id] = item.conference;
      return map;
    },
    {} as Record<number, TeamRank>,
  );
  gameDocs.sort((a, b) => a.leagueDate - b.leagueDate);

  const gamesBySeries = new Map<string, FirebaseFirestore.DocumentData[]>();
  gameDocs.forEach((game) => {
    const seriesKey = [game.homeTeamId, game.visitorTeamId].sort().join("-");
    const games = gamesBySeries.get(seriesKey) || [];
    games.push(game);
    gamesBySeries.set(seriesKey, games);
  });

  const series = Array.from(gamesBySeries.values()).map((games) => {
    const homeTeamId = games[0].homeTeamId;
    const awayTeamId = games[0].visitorTeamId;
    let homeTeamWins = 0;
    let awayTeamWins = 0;
    games
      .filter((game) => game.status == GameState.Finished)
      .forEach((game) => {
        (game.homeTeamScore > game.visitorTeamScore
          ? game.homeTeamId
          : game.visitorTeamId) === homeTeamId
          ? homeTeamWins++
          : awayTeamWins++;
      });
    return new PlayoffSeries(
      conferenceRankByTeamId[homeTeamId].id,
      conferenceRankByTeamId[homeTeamId].rank,
      homeTeamId,
      games[0].homeTeam.fullName,
      homeTeamWins,
      conferenceRankByTeamId[awayTeamId].rank,
      awayTeamId,
      games[0].visitorTeam.fullName,
      awayTeamWins,
    );
  });

  return playoffRoundIndices
    .map(([start, end], index) => {
      const roundSeries = series.slice(start, end + 1);
      roundSeries.sort((a, b) => {
        if (a.conferenceId === b.conferenceId) {
          return a.homeTeamRank - b.homeTeamRank;
        } else {
          return a.conferenceId - b.conferenceId;
        }
      });
      return new PlayoffRound(index, roundSeries);
    })
    .filter((round) => round.series.length > 0);
}
