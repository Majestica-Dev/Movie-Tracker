import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:movie_tracker/core/di/injectable.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/loggers/amplitude_service.dart';
import 'package:movie_tracker/core/loggers/sentry.dart';
import 'package:movie_tracker/env/env_keys.dart';
import 'package:movie_tracker/firebase_options.dart';
import 'package:movie_tracker/infrastructure/notifications/local_notification_service.dart';
import 'package:movie_tracker/infrastructure/notifications/reminder/reminder_service.dart';
import 'package:movie_tracker/presentation/app/widgets/app.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

void initAndRunApp() async {
  await dotenv.load();

  _initWidgetBindingAndPreserveSplash();

  await configureDependencies();

  await _initPurchases();

  await _initFirebase();

  _initAmplitude();

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

Future<void> _initPurchases() async {
  final configuration = PurchasesConfiguration(EnvKeys.iapApiKey);

  await Purchases.configure(configuration);
}

Future<void> _initNotifications() async {
  await LocalNotificationService.initializeLocalNotifications(
    notificationCategories: [
      ReminderService.reminderCategory,
    ],
  );

  Locator.reminderFunctions.reschedule();
}

Future<void> _initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

void _initAmplitude() => AmplitudeService.init();
