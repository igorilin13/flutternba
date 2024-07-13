export class PlayoffRound {
  constructor(
    public id: number,
    public series: PlayoffSeries[],
  ) {}
}

export class PlayoffSeries {
  constructor(
    public id: string,
    public conferenceId: number,
    public homeTeamRank: number,
    public homeTeamId: number,
    public homeTeamName: string,
    public homeTeamWins: number,
    public awayTeamRank: number,
    public awayTeamId: number,
    public awayTeamName: string,
    public awayTeamWins: number,
  ) {}
}
