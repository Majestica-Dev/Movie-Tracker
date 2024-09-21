import 'dart:convert';
import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:movie_tracker/core/typedefs/typedefs.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

abstract final class LocalNotificationService {
  static final _notifications = IOSFlutterLocalNotificationsPlugin();

  static Future<void> initializeLocalNotifications({
    required List<DarwinNotificationCategory> notificationCategories,
  }) async {
    tz.initializeTimeZones();

    await _notifications.initialize(
      DarwinInitializationSettings(
        notificationCategories: notificationCategories,
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestCriticalPermission: false,
        requestProvisionalPermission: false,
        requestSoundPermission: false,
      ),
      onDidReceiveNotificationResponse: onActionReceivedMethod,
      onDidReceiveBackgroundNotificationResponse: onActionReceivedMethod,
    );
  }

  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
    NotificationResponse notificationResponse,
  ) async {
    handleNotificationTap(notificationResponse.payload);
  }

  static void handleNotificationTap(String? payload) {}

  static Future<void> createScheduleNotification({
    required int id,
    required String categoryKey,
    required DateTime scheduleTime,
    required String title,
    String? body,
    JsonMap? payload,
  }) async {
    if (Platform.isAndroid) return;

    final scheduledDate = tz.TZDateTime.from(scheduleTime, tz.local);

    final iOSPlatformChannelSpecifics = DarwinNotificationDetails(
      categoryIdentifier: categoryKey,
      badgeNumber: 1,
    );

    final Map<String, dynamic> mergedPayload = {
      'categoryKey': categoryKey,
      ...?payload,
    };

    await _notifications.zonedSchedule(
      id,
      title,
      body ?? '',
      scheduledDate,
      iOSPlatformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      payload: jsonEncode(mergedPayload),
    );
  }

  static Future<void> cancelById(int id) async {
    if (Platform.isAndroid) return;

    await _notifications.cancel(id);
  }
}
