import { logger } from "firebase-functions";
import axios from "axios";
import { defineSecret, defineString } from "firebase-functions/params";
import { getFirestore } from "firebase-admin/firestore";
import { onSchedule } from "firebase-functions/v2/scheduler";

const db = getFirestore();
const apiKey = defineSecret("BALLIO_API_KEY");
const apiUrl = defineString("BALLIO_API_URL");

interface Team {
  id: number;
  conference: string;
  division: string;
  city: string;
  name: string;
  full_name: string;
  abbreviation: string;
}

export const updateTeamInfos = onSchedule(
  { secrets: [apiKey], schedule: "0 6 * * 2" },
  async () => {
    logger.log("updateTeamInfos");
    await loadTeamInfos();
  },
);

async function loadTeamInfos() {
  try {
    const url = `${apiUrl.value()}/teams?per_page=100`;
    const response = await axios.get(url, {
      headers: {
        Authorization: apiKey.value(),
      },
    });

    const activeTeams: Team[] = response.data.data.filter(
      (team: Team) => team.id <= 30,
    );

    const batch = db.batch();
    activeTeams.forEach((team) => {
      const docRef = db.collection("teams").doc(team.id.toString());
      batch.set(docRef, team);
    });
    await batch.commit();

    logger.info("Team data loaded successfully");
  } catch (error) {
    logger.error("Error loading team data", error);
  }
}
