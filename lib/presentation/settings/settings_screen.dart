import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/constants/app_url.dart';

import 'package:movie_tracker/presentation/core/utils/url_launcher.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
      child: Column(
        children: [
          const SizedBox(height: 80),
          SettingsItem(
            leadingIcon: const PhosphorIcon(PhosphorIconsFill.star),
            text: 'Rate App',
            onTap: () => print('e'),
          ),
          SizedBox(height: t.spacing.x3),
          SettingsItem(
            onTap: () => UrlLauncher.launchUrl(MTUrls.suggestionsLinks),
            text: 'Have suggestions?',
            leadingIcon: const PhosphorIcon(PhosphorIconsFill.envelopeSimple),
          ),
          SizedBox(height: t.spacing.x3),
          SettingsItem(
            leadingIcon: const PhosphorIcon(PhosphorIconsFill.shieldCheck),
            text: 'Privacy Policy',
            onTap: () => UrlLauncher.launchUrl(MTUrls.privacyPolicy),
          ),
          SizedBox(height: t.spacing.x3),
          SettingsItem(
            leadingIcon: const PhosphorIcon(PhosphorIconsFill.files),
            text: 'Terms of Use',
            onTap: () => UrlLauncher.launchUrl(MTUrls.terms),
          ),
        ],
      ),
    );
  }
}
