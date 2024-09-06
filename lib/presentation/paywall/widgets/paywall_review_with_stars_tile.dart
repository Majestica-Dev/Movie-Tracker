import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_stars.dart';

class PaywallReviewWithStarsTile extends StatelessWidget {
  const PaywallReviewWithStarsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Padding(
      padding: EdgeInsets.all(t.spacing.x4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PaywallStars(),
          SizedBox(height: t.spacing.x3),
          Text(
            'More watching time, less searching',
            style: t.textTheme.bodyMBold.copyWith(
              color: t.colors.neutralHighContent,
            ),
          ),
          SizedBox(height: t.spacing.x3),
          Text(
            'This app saves me so much time and energy by finding the perfect movie for me',
            textAlign: TextAlign.center,
            style: t.textTheme.bodySRegular.copyWith(
              color: t.colors.neutralHighContent,
            ),
          ),
          SizedBox(height: t.spacing.x3),
          Text(
            'LiamVenn 99',
            style: t.textTheme.bodyXSRegular.copyWith(
              color: t.colors.neutralLowContent,
            ),
          ),
        ],
      ),
    );
  }
}
