import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

abstract final class SentryLogger {
  static Future<void> init({
    required VoidCallback appRunner,
  }) async {
    return SentryFlutter.init(
      (options) {
        options.dsn =
            'https://5a0e271d66fbd2889a11206e31052245@o4507372340117504.ingest.us.sentry.io/4507820571885568';

        options.tracesSampleRate = 1.0;
      },
      appRunner: appRunner,
    );
  }
}
