import 'package:permission_handler/permission_handler.dart';

abstract final class PermissionStatusChecker {
  static Future<PermissionStatus> get notificationStatus async {
    return Permission.notification.status;
  }
}
