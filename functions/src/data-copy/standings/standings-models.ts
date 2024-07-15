import { TeamInfoModel } from "../db/db-models";

export class TeamStandings {
  constructor(
    public team: TeamInfoModel,
    public conference: TeamRank,
    public division: TeamRank,
    public overall: WinLossRecord,
    public home: WinLossRecord,
    public away: WinLossRecord,
    public lastTen: WinLossRecord,
    public streak: number,
    public isWinStreak: boolean,
    public points: number,
    public pointsAgainst: number,
  ) {}
}

export class TeamRank {
  constructor(
    public id: number,
    public name: string,
    public rank: number,
    public gamesBehind: string,
  ) {}
}

export class WinLossRecord {
  constructor(
    public win: number,
    public loss: number,
  ) {}

  get winPct(): number {
    const totalGames = this.win + this.loss;
    return totalGames == 0 ? 0 : this.win / totalGames;
  }
}
