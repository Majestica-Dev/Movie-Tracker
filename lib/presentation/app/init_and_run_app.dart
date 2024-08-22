import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:movie_tracker/core/di/injectable.dart';
import 'package:movie_tracker/core/loggers/sentry.dart';
import 'package:movie_tracker/presentation/app/widgets/app.dart';
import 'package:sentry_flutter/sentry_flutter.dart' hide SentryLogger;

void initAndRunApp() async {
  _initWidgetBindingAndPreserveSplash();

  await configureDependencies();

  if (kDebugMode) {
    runApp(const MovieApp());
  } else {
    await SentryLogger.init(appRunner: () => runApp(const MovieApp()));

    log('inited');

    try {
      throw Exception();
    } catch (e, st) {
      await Sentry.captureException(e, stackTrace: st);

      log('tried');
    }
  }
}

void _initWidgetBindingAndPreserveSplash() {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
}
