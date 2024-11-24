import 'dart:math';

import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/extensions/firebase_exception_x.dart';
import 'package:movie_tracker/core/services/instalation_source_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

@singleton
class BeforeAfterPageRemoteConfig extends Cubit<bool> {
  final FirebaseRemoteConfig remoteConfig;
  final InstalationSourceService installationSourceService;

  BeforeAfterPageRemoteConfig(
    this.remoteConfig,
    this.installationSourceService,
  ) : super(false);

  Future<void> init() async {
    if (kDebugMode || installationSourceService.isAppDownloadedFromTestFlight) {
      final bool isWithBeforeAfterPage = Random().nextBool();

      emit(isWithBeforeAfterPage);

      return;
    }

    try {
      await remoteConfig.fetchAndActivate();

      final remoteConfigString = remoteConfig.getString(
        'before_after_page_test',
      );

      final isWithBeforeAfterPage = switch (remoteConfigString) {
        'without' => false,
        'with' => true,
        _ => false
      };

      emit(isWithBeforeAfterPage);
    } on FirebaseException catch (e, st) {
      final bool isInternetConnectionError = e.isInternetConnectionError;

      final bool isWithBeforeAfterPage = Random().nextBool();
      emit(isWithBeforeAfterPage);

      if (isInternetConnectionError) return;

      Sentry.captureException(e, stackTrace: st);
    }
  }
}
