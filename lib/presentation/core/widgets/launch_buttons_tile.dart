import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/presentation/core/constants/app_url.dart';
import 'package:movie_tracker/presentation/core/utils/url_launcher.dart';

import '../../../gen/fonts.gen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

class LaunchButtonsTile extends StatelessWidget {
  final bool showRestore;

  const LaunchButtonsTile({
    this.showRestore = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      children: [
        if (!showRestore) const Spacer(),
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
        const Spacer(),
        if (showRestore) ...[
          GestureDetector(
            onTap: () {
              context.read<PurchaseActorBloc>().add(
                    const PurchaseActorEvent.restore(),
                  );
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
          const Spacer(),
        ],
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
        if (!showRestore) const Spacer(),
      ],
    );
  }
}
