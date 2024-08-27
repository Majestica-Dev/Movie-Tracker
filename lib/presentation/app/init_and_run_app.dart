import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:movie_tracker/core/di/injectable.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/loggers/sentry.dart';
import 'package:movie_tracker/infrastructure/notifications/local_notification_service.dart';
import 'package:movie_tracker/infrastructure/notifications/reminder/reminder_service.dart';
import 'package:movie_tracker/presentation/app/widgets/app.dart';

void initAndRunApp() async {
  _initWidgetBindingAndPreserveSplash();

  await configureDependencies();

  _initNotifications();

  if (kDebugMode) {
    runApp(const MovieApp());
  } else {
    await SentryLogger.init(appRunner: () => runApp(const MovieApp()));
  }
}

void _initWidgetBindingAndPreserveSplash() {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
}

Future<void> _initNotifications() async {
  await LocalNotificationService.initializeLocalNotifications(
    notificationCategories: [
      ReminderService.reminderCategory,
    ],
  );

  Locator.reminderFunctions.reschedule();
}
