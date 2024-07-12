import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutternba/ui/core/strings.dart';

enum AndroidNotificationChannel {
  gameReminders(
    "game_reminders",
    UiStrings.gameRemindersChannelName,
    UiStrings.gameRemindersChannelDescription,
  );

  final String id;
  final String name;
  final String description;

  const AndroidNotificationChannel(this.id, this.name, this.description);
}

class LocalNotificationsIntegration {
  final FlutterLocalNotificationsPlugin _plugin;
  bool _isInitialized = false;

  LocalNotificationsIntegration(this._plugin);

  Future<void> _init() async {
    const InitializationSettings settings = InitializationSettings(
      android: AndroidInitializationSettings('ic_notification'),
      iOS: DarwinInitializationSettings(
        requestSoundPermission: false,
        requestBadgePermission: false,
        requestAlertPermission: false,
      ),
    );

    await _plugin.initialize(settings);
    _isInitialized = true;
  }

  void showNotification({
    int? id,
    String? title,
    String? body,
    required AndroidNotificationChannel channel,
  }) async {
    if (!_isInitialized) {
      await _init();
    }

    AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      channel.id,
      channel.name,
      channelDescription: channel.description,
    );
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    await _plugin.show(
      id ?? Random().nextInt(100000),
      title,
      body,
      notificationDetails,
    );
  }
}
