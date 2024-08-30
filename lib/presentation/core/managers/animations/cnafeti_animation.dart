import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/gen/assets.gen.dart';

abstract class CanfetiAnimation {
  static void show({Duration? waitingDuration}) async {
    await Future.delayed(waitingDuration ?? const Duration(seconds: 1));

    showOverlay(
      (context, progress) {
        return Align(
          alignment: Alignment.topCenter,
          child: LottieBuilder.asset(Assets.lotties.canfeti),
        );
      },
    );
  }
}
