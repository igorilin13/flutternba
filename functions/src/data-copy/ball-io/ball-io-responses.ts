export interface ApiResponse<T> {
  meta: MetaData;
  data: T;
}

export interface MetaData {
  next_cursor: number;
}

export interface TeamResponse {
  id: number;
  name: string;
  full_name: string;
}

export interface BaseGameResponse {
  id: number;
  date: string;
  status: string;
  time: string | null;
  postseason: boolean;
  home_team_score: number;
  visitor_team_score: number;
}

export interface GameResponse extends BaseGameResponse {
  home_team: TeamResponse;
  visitor_team: TeamResponse;
}

export enum GameState {
  Scheduled,
  Live,
  Finished,
}

export interface PlayerInfoResponse {
  id: number;
  first_name: string;
  last_name: string;
  jersey_number: string;
}

export interface PlayerGameStatsResponse {
  id: number;
  min: string;
  fgm: number;
  fga: number;
  fg3m: number;
  fg3a: number;
  ftm: number;
  fta: number;
  oreb: number;
  dreb: number;
  reb: number;
  ast: number;
  stl: number;
  blk: number;
  turnover: number;
  pf: number;
  pts: number;
  player: PlayerInfoResponse;
  game: BaseGameResponse;
  team: TeamResponse;
}
