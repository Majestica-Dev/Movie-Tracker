import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/utils/url_launcher.dart';

class MovieTrailerLaunchButton extends StatelessWidget {
  final String? trailerLink;
  final String movieTitle;

  const MovieTrailerLaunchButton({
    required this.trailerLink,
    required this.movieTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      expand: true,
      buttonSize: MDSButtonSize.L,
      onPressed: () {
        if (trailerLink == null) {
          UrlLauncher.searchInYoutube(query: movieTitle);
        } else {
          UrlLauncher.launchUrl(trailerLink!);
        }
      },
      text: 'Watch trailer on YouTube',
      leftIcon: const PhosphorIcon(PhosphorIconsFill.youtubeLogo),
    );
  }
}
