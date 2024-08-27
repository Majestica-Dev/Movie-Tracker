import 'package:injectable/injectable.dart';
import 'package:movie_tracker/infrastructure/notifications/local_notification_service.dart';
import 'package:movie_tracker/infrastructure/notifications/reminder/reminder_manager.dart';
import 'package:movie_tracker/infrastructure/notifications/reminder/reminder_service.dart';
import 'package:uuid/uuid.dart';

@singleton
class ReminderFunctions {
  final ReminderManager _reminderManager;
  final Uuid _uuid;

  ReminderFunctions(this._reminderManager, this._uuid);

  Future<void> reschedule() async {
    await _cancelReminderNotifications();

    List<String> notificationsIds = [];

    for (var i = 0; i < 7; i++) {
      DateTime scheduledDate = DateTime.now().add(Duration(days: i));

      scheduledDate = DateTime(
        scheduledDate.year,
        scheduledDate.month,
        scheduledDate.day,
        20,
        0,
      );

      if (scheduledDate.isBefore(DateTime.now())) continue;

      final id = _uuid.v4();
      notificationsIds.add(id);

      ReminderService.createScheduleNotification(
        id: id,
        scheduleTime: scheduledDate,
        title: "🎥 It’s Movie Time! 🍿",
        body:
            'It’s movie time! Don’t miss out—grab your popcorn, settle in, and enjoy it!',
      );
    }

    _reminderManager.setNotificationsIds(notificationsIds);
  }

  Future<void> _cancelReminderNotifications() async {
    final ids = _reminderManager.reminderNotificationsIds;

    for (var id in ids) {
      await LocalNotificationService.cancelById(id.hashCode);
    }
  }
}
