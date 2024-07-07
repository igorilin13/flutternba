import { calculateGameState } from "../ball-io/ball-io-api";
import {
  BaseGameResponse,
  GameResponse,
  GameState,
  TeamResponse,
} from "../ball-io/ball-io-responses";
import { colorsByTeamId } from "../enrich/enrich-data";

export class TeamInfoModel {
  constructor(
    public id: number,
    public name: string,
    public fullName: string,
    public abbreviation: string,
    public color: string,
  ) {}
}

export class GameInfoModel {
  constructor(
    public id: number,
    public leagueDate: string,
    public homeTeamId: number,
    public homeTeam: TeamInfoModel,
    public homeTeamScore: number,
    public visitorTeamId: number,
    public visitorTeam: TeamInfoModel,
    public visitorTeamScore: number,
    public postseason: boolean,
    public status: number,
    public scheduled: string | null,
    public inGameTime: string | null,
  ) {}
}

export function toGameInfoModel(game: GameResponse) {
  return toGameInfo(game, game.home_team, game.visitor_team);
}

export function toGameInfo(
  game: BaseGameResponse,
  homeTeam: TeamResponse,
  visitorTeam: TeamResponse,
): GameInfoModel {
  const gameState = calculateGameState(game);
  return new GameInfoModel(
    game.id,
    game.date,
    homeTeam.id,
    toTeamInfoModel(homeTeam),
    game.home_team_score,
    visitorTeam.id,
    toTeamInfoModel(visitorTeam),
    game.visitor_team_score,
    game.postseason,
    gameState as number,
    gameState == GameState.Scheduled ? game.status : null,
    game.time,
  );
}

export function toTeamInfoModel(team: TeamResponse) {
  const color = colorsByTeamId[team.id];
  return new TeamInfoModel(
    team.id,
    team.name,
    team.full_name,
    team.abbreviation,
    color,
  );
}
