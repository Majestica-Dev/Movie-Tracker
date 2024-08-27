import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/utils/permission/permission_requester.dart';
import 'package:movie_tracker/core/utils/permission/permission_status_checkers.dart';
import 'package:permission_handler/permission_handler.dart';

abstract final class CupertionStyleNotificationAlertDialog {
  static Future<void> checkAndShow(BuildContext context) async {
    final notificationStatus = await PermissionStatusChecker.notificationStatus;

    if (notificationStatus.isGranted ||
        notificationStatus.isPermanentlyDenied) {
      return;
    }

    showCupertinoDialog(
      // ignore: use_build_context_synchronously
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text("Torn on notifications"),
          content: const Text(
            "Get daily reminders to capture your moments and thoughts.",
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              textStyle: const TextStyle(color: Colors.blue),
              child: const Text(
                'Later',
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              textStyle: const TextStyle(color: Colors.blue),
              isDefaultAction: true,
              child: const Text("Ok"),
              onPressed: () async {
                Navigator.of(context).pop();

                final notifiactionAccessStatus =
                    await PermissionRequester.requestNotifiaction(
                  openAppsSettings: false,
                );

                if (notifiactionAccessStatus.isGranted) {
                  Locator.reminderFunctions.reschedule();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
