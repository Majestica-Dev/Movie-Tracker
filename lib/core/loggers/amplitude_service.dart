import 'dart:io';

import 'package:amplitude_flutter/amplitude.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/domain/purchases/entities/paywal_from.dart';

abstract final class AmplitudeService {
  static final _amplitude = Amplitude.getInstance();

  static bool get isNotDebugOrTestflight {
    final isFromTestFlight =
        Locator.instalationSourceService.isAppDownloadedFromTestFlight;

    return (!kDebugMode && !Platform.isAndroid && !isFromTestFlight);
  }

  static void init() {
    if (isNotDebugOrTestflight) {
      _amplitude.init('fa3fa10d405e06e18caed34d690ec99');
    }
  }

  static void _logEvent({
    required String name,
    Map<String, Object?>? parameters,
  }) {
    if (isNotDebugOrTestflight) {
      _amplitude.logEvent(
        name,
        eventProperties: parameters,
      );
    }
  }

  static void introOpened() {
    _logEvent(
      name: 'intro_opened',
    );
  }

  static void introContinue() {
    _logEvent(
      name: 'intro_continue',
    );
  }

  static void onbPushAllowed() {
    _logEvent(
      name: 'onb_push_allowed',
    );
  }

  static void onbPushRejected() {
    _logEvent(
      name: 'onb_push_rejected',
    );
  }

  static void paywallSheetOpened({
    required PaywallFrom from,
  }) {
    _logEvent(
      name: 'paywall_sheet_opened',
      parameters: {
        'opened_from': from.name,
      },
    );
  }

  static void premiumSold({
    required PaywallFrom from,
  }) {
    _logEvent(
      name: 'premium_sold',
      parameters: {
        'sold_from': from.name,
      },
    );
  }
}
