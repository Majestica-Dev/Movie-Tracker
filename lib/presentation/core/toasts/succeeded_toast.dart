import 'package:flutter/material.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

abstract class SucceededToast {
  static void show({
    required String message,
    int waitingMilliseconds = 500,
  }) async {
    await Future.delayed(Duration(milliseconds: waitingMilliseconds));

    MDSToast(
      mainAxisSize: MainAxisSize.max,
      message: message,
      icon: const PhosphorIcon(
        PhosphorIconsFill.checkCircle,
        size: 24,
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(
        top: 10,
      ),
    ).show();
  }
}
