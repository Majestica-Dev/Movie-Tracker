import 'package:url_launcher/url_launcher_string.dart';

abstract class UrlLauncher {
  static Future<void> launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      launchUrlString(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
