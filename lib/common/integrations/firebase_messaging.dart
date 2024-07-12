import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutternba/common/integrations/local_notifications.dart';

class FirebaseMessagingIntegration {
  final LocalNotificationsIntegration _notificationsIntegration;

  FirebaseMessagingIntegration(this._notificationsIntegration);

  StreamSubscription init() {
    return FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;

      if (notification != null) {
        final title = notification.title;
        final body = notification.body;
        if (title != null || body != null) {
          _notificationsIntegration.showNotification(
            title: title,
            body: body,
            channel: AndroidNotificationChannel.gameReminders,
          );
        }
      }
    });
  }
}
