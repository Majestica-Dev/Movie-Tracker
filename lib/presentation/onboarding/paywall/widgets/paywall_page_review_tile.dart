import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_stars.dart';

class PaywallPageReviewTile extends StatelessWidget {
  const PaywallPageReviewTile({super.key});

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
            'BeergueVenn 99',
            style: t.textTheme.bodyXSRegular.copyWith(
              color: t.colors.neutralLowContent,
            ),
          ),
        ],
      ),
    );
  }
}
