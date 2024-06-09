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

export interface GameResponse {
  id: number;
  date: string;
  home_team: TeamResponse;
  home_team_score: number;
  visitor_team: TeamResponse;
  visitor_team_score: number;
  postseason: boolean;
  status: string;
  time: string | null;
}

export enum GameState {
  Scheduled,
  Live,
  Finished,
}
