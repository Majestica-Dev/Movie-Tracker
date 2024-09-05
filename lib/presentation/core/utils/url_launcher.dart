import 'package:url_launcher/url_launcher_string.dart';

abstract class UrlLauncher {
  static Future<bool> launchUrl(String url) async {
    if (!await canLaunchUrlString(url)) return false;

    launchUrlString(
      url,
      mode: LaunchMode.externalApplication,
    );

    return true;
  }

  static Future<void> searchInYoutube({required String query}) async {
    final youtubeAppUrl =
        'youtube://www.youtube.com/results?search_query=$query';
    final youtubeWebUrl = 'https://www.youtube.com/results?search_query=$query';

    final canLaunchYoutubeAppUrl = await launchUrlString(
      youtubeAppUrl,
      mode: LaunchMode.externalNonBrowserApplication,
    );

    if (canLaunchYoutubeAppUrl) return;

    await launchUrlString(
      youtubeWebUrl,
      mode: LaunchMode.externalApplication,
    );
  }
}
