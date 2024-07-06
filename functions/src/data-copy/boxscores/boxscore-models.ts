import { GameInfoModel } from "../db/db-models";

export class GameBoxScore {
  constructor(
    public game: GameInfoModel,
    public home: TeamBoxScore | null,
    public away: TeamBoxScore | null,
  ) {}
}

export class TeamBoxScore {
  constructor(
    public team: TeamStats,
    public players: PlayerStats[],
  ) {}
}

export class TeamStats {
  constructor(
    public id: number,
    public fgMade: number,
    public fgAttempts: number,
    public threePtMade: number,
    public threePtAttempts: number,
    public ftMade: number,
    public ftAttempts: number,
    public rebounds: number,
    public offRebounds: number,
    public defRebounds: number,
    public blocks: number,
    public steals: number,
    public turnovers: number,
    public assists: number,
  ) {}
}

export class PlayerStats {
  constructor(
    public id: number,
    public firstName: string,
    public lastName: string,
    public jersey: string,
    public minutes: number,
    public points: number,
    public fgMade: number,
    public fgAttempts: number,
    public threePtMade: number,
    public threePtAttempts: number,
    public ftMade: number,
    public ftAttempts: number,
    public rebounds: number,
    public offRebounds: number,
    public defRebounds: number,
    public blocks: number,
    public steals: number,
    public turnovers: number,
    public assists: number,
  ) {}
}
