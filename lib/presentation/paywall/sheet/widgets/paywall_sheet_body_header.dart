import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/presentation/paywall/widgets/paywall_review_with_stars_tile.dart';

class PaywallSheetBodyHeader extends StatelessWidget {
  const PaywallSheetBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
      child: const PaywallReviewWithStarsTile(),
    );
  }
}
