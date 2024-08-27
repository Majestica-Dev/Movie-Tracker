import 'package:movie_tracker/core/utils/permission/permission_status_checkers.dart';
import 'package:open_apps_settings/open_apps_settings.dart';
import 'package:open_apps_settings/settings_enum.dart';
import 'package:permission_handler/permission_handler.dart';

abstract final class PermissionRequester {
  static Future<PermissionStatus> requestNotifiaction({
    required bool openAppsSettings,
  }) async {
    if (openAppsSettings &&
        await PermissionStatusChecker.notificationStatus.isPermanentlyDenied) {
      await OpenAppsSettings.openAppsSettings(
        settingsCode: SettingsCode.NOTIFICATION,
      );

      return PermissionStatusChecker.notificationStatus;
    }

    return Permission.notification.request();
  }
}
