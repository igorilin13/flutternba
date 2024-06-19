import { GameInfoModel } from "../db/db-models";
import { WinLossRecord } from "../standings/standings-models";

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
    public record: WinLossRecord | null,
    public players: PlayerStats[],
  ) {}
}

export class TeamStats {
  constructor(
    public id: number,
    public fgm: number,
    public fga: number,
    public fg3pm: number,
    public fg3pa: number,
    public ftm: number,
    public fta: number,
    public reb: number,
    public oreb: number,
    public dreb: number,
    public blk: number,
    public stl: number,
    public to: number,
  ) {}
}

export class PlayerStats {
  constructor(
    public id: number,
    public firstName: string,
    public lastName: string,
    public startPosition: string | null,
    public jersey: string,
    public min: number,
    public pts: number,
    public fgm: number,
    public fga: number,
    public fg3pm: number,
    public fg3pa: number,
    public ftm: number,
    public fta: number,
    public reb: number,
    public oreb: number,
    public dreb: number,
    public blk: number,
    public stl: number,
    public to: number,
  ) {}
}
