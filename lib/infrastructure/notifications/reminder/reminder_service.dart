import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:movie_tracker/infrastructure/notifications/local_notification_service.dart';

abstract final class ReminderService {
  static const categoryKey = 'reminder';

  static const reminderCategory = DarwinNotificationCategory(categoryKey);

  static Future<void> createScheduleNotification({
    required String id,
    required DateTime scheduleTime,
    required String title,
    String? body,
    String? payload,
  }) async {
    await LocalNotificationService.createScheduleNotification(
      id: id.hashCode,
      categoryKey: categoryKey,
      scheduleTime: scheduleTime,
      title: title,
      body: body,
    );
  }
}
