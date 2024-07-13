import { GameInfoModel } from "../data-copy/db/db-models";
import {
  getDueReminders,
  getPendingRemindersDate,
  removeReminders,
  setPendingReminders,
} from "../data-copy/db/firestore-service";
import { formatAsDateOnly } from "../utils/dates";
import { messaging } from "firebase-admin";

const reminderWindow = 60 * 60 * 1000;
const notificationBody = "Game starting soon";

function getTopicName(teamId: string): string {
  return `reminders_${teamId}`;
}

function getNotificationTitle(game: GameInfoModel): string {
  return `${game.homeTeam.name} vs ${game.visitorTeam.name}`;
}

export class GameReminder {
  constructor(
    public due: number,
    public gameStart: number,
    public title: string,
  ) {}
}

export async function updatePendingReminders(games: GameInfoModel[]) {
  const today = formatAsDateOnly(new Date());
  const pendingDate = await getPendingRemindersDate();

  if (today !== pendingDate) {
    console.log("Updating pending reminders");
    const remindersById: { [key: number]: GameReminder } = {};
    games.forEach((game) => {
      const scheduledString = game.scheduled;
      if (scheduledString) {
        const gameStart = new Date(scheduledString).getTime();
        const reminderDue = gameStart - reminderWindow;
        const title = getNotificationTitle(game);
        const reminder = new GameReminder(reminderDue, gameStart, title);
        remindersById[game.homeTeamId] = reminder;
        remindersById[game.visitorTeamId] = reminder;
      }
    });
    await setPendingReminders(today, remindersById);
  } else {
    console.log("Pending reminders already up to date");
  }
}

export async function sendDueReminders() {
  const now = new Date().getTime();
  const reminders = await getDueReminders(now);
  console.log(reminders.length, "reminders due");

  const sentTeamIds: string[] = [];
  await Promise.all(
    reminders.map(async ([teamId, reminder]) => {
      const message = {
        notification: {
          title: reminder.title,
          body: notificationBody,
        },
        topic: getTopicName(teamId),
      };
      try {
        await messaging().send(message);
        sentTeamIds.push(teamId);
        console.log("Sent reminder for", teamId);
      } catch (e) {
        console.error("Error sending message:", e);
      }
    }),
  );

  await removeReminders(sentTeamIds);
}
