import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/extensions/store_product/store_product_x.dart';
import 'package:movie_tracker/domain/purchases/entities/subscription_plans.dart';

class PaywallPlanChooserCard extends StatelessWidget {
  final bool isYearlyChosen;
  final ValueChanged<bool> yearlyChosen;
  final SubscriptionPlans subscriptionPlans;

  const PaywallPlanChooserCard({
    required this.isYearlyChosen,
    required this.yearlyChosen,
    required this.subscriptionPlans,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final yearlyPriceAsString = subscriptionPlans.yearly.priceAsString;
    final yearlyPriseMyMonthAsString =
        subscriptionPlans.yearly.perMonthPriceAsString;
    final weeklyPriseAsString = subscriptionPlans.weekly.priceAsString;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (!isYearlyChosen) {
              MDSHapticFeedback.selectionClick();

              yearlyChosen(true);
            }
          },
          child: MDSPayWallOfferCardCustom(
            isActive: isYearlyChosen,
            cardTitle: 'Best value',
            cardTitleColor:
                isYearlyChosen ? t.colors.highContainerContent : null,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: double.infinity),
                Text(
                  '1 year $yearlyPriceAsString',
                  style: t.textTheme.title2Regular.copyWith(
                    color: t.colors.neutralHighContent,
                  ),
                ),
                SizedBox(height: t.spacing.x1),
                Text(
                  'Only $yearlyPriseMyMonthAsString / month',
                  style: t.textTheme.bodySRegular.copyWith(
                    color: t.colors.neutralHighContent,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: t.spacing.x3),
        GestureDetector(
          onTap: () {
            if (isYearlyChosen) {
              MDSHapticFeedback.selectionClick();

              yearlyChosen(false);
            }
          },
          child: MDSPayWallTile(
            isActive: !isYearlyChosen,
            firstText: '$weeklyPriseAsString / week',
          ),
        )
      ],
    );
  }
}
