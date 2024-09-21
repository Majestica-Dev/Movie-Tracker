import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_tracker/core/di/locator.dart';

abstract class FirebaseAnalyticsLogger {
  static final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static Future<void> _logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    final isFromTestFlight =
        Locator.instalationSourceService.isAppDownloadedFromTestFlight;

    if (kDebugMode || Platform.isAndroid || isFromTestFlight) {
      // Don't collect analytics in debug mode, in TestFlight and in Android!!
      return;
    }

    return analytics.logEvent(
      name: name,
      parameters: parameters,
    );
  }

  static void paywallPremiumSold() async {
    await _logEvent(
      name: 'paywall_premium_sold',
    );
  }

  static void onboardingPremiumSold() async {
    await _logEvent(
      name: 'onboarding_premium_sold',
    );
  }
}
