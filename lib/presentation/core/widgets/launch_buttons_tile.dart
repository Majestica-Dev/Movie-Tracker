import 'package:movie_tracker/presentation/core/constants/app_url.dart';
import 'package:movie_tracker/presentation/core/utils/url_launcher.dart';

import '../../../gen/fonts.gen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

class LaunchButtonsTile extends StatelessWidget {
  const LaunchButtonsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => UrlLauncher.launchUrl(MTUrls.terms),
          child: Text(
            'Terms & Conditions',
            maxLines: 2,
            style: t.textTheme.bodyXSRegular.copyWith(
              color: t.colors.neutralMedContent,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO : impl
          },
          child: Text(
            'Restore Purchases',
            maxLines: 1,
            style: t.textTheme.bodyXSRegular.copyWith(
              color: t.colors.neutralMedContent,
              fontFamily: FontFamily.sFPro,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => UrlLauncher.launchUrl(MTUrls.privacyPolicy),
          child: Text(
            'Privacy Policy',
            maxLines: 1,
            style: t.textTheme.bodyXSRegular.copyWith(
              color: t.colors.neutralMedContent,
            ),
          ),
        ),
      ],
    );
  }
}
