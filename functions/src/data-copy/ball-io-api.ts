import axios, { AxiosResponse } from "axios";
import { SecretParam } from "firebase-functions/lib/params/types";
import { defineString } from "firebase-functions/params";
import { ApiResponse, GameResponse, TeamResponse } from "./ball-io-responses";

const apiUrl = defineString("BALLIO_API_URL");

export function getTeams(
  apiKey: SecretParam,
): Promise<AxiosResponse<ApiResponse<Array<TeamResponse>>>> {
  return performGetRequest(apiKey, "teams?per_page=100");
}

export function getTodayLeagueGames(
  apiKey: SecretParam,
): Promise<AxiosResponse<ApiResponse<Array<GameResponse>>>> {
  const today = new Date();
  const year = today.getFullYear();
  const month = String(today.getMonth() + 1).padStart(2, "0");
  const day = String(today.getDate()).padStart(2, "0");
  const date = `${year}-${month}-${day}`;

  return performGetRequest(apiKey, `games?per_page=100dates[]=${date}`);
}

export function getSeasonLeagueGames(
  apiKey: SecretParam,
  cursor: number | null,
): Promise<AxiosResponse<ApiResponse<Array<GameResponse>>>> {
  const cursorParam = cursor ? `&cursor=${cursor}` : "";
  return performGetRequest(
    apiKey,
    `games?per_page=100&start_date=${calculateCurrentApiSeason()}-09-01&${cursorParam}`,
  );
}

function performGetRequest<T>(
  apiKey: SecretParam,
  path: string,
): Promise<AxiosResponse<T>> {
  const url = `${apiUrl.value()}${path}`;
  return axios.get(url, {
    headers: {
      Authorization: apiKey.value(),
    },
  });
}

function calculateCurrentApiSeason(): number {
  const now = new Date();
  const august = 7;
  return now.getMonth() >= august ? now.getFullYear() : now.getFullYear() - 1;
}
