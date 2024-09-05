import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/widgets/paywall_page_button_tile.dart';

import 'package:movie_tracker/presentation/paywall/widgets/paywall_plan_chooser_card.dart';

class PaywallPageBottomTile extends StatefulWidget {
  const PaywallPageBottomTile({
    super.key,
  });

  @override
  State<PaywallPageBottomTile> createState() => _PaywallPageBottomTileState();
}

class _PaywallPageBottomTileState extends State<PaywallPageBottomTile> {
  bool isYearlyChosen = true;

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final double screenHeight = MediaQuery.of(context).size.height;

    final bool isSmallScreen = screenHeight < 700;

    return BlocBuilder<SubscriptionsFetcherBloc, SubscriptionsFetcherState>(
      builder: (context, fetcherState) {
        return fetcherState.maybeMap(
          successed: (successedState) {
            final plans = successedState.subscriptionPlans;

            return Column(
              children: [
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
                  child: PaywallPlanChooserCard(
                    isYearlyChosen: isYearlyChosen,
                    yearlyChosen: (value) {
                      setState(() {
                        isYearlyChosen = value;
                      });
                    },
                    subscriptionPlans: plans,
                  ),
                ),
                // SizedBox(height: isSmallScreen ? 20 : t.spacing.x6),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
                //   child: const FeaturesTile(),
                // ),
                SizedBox(height: t.spacing.x6),
                if (!isSmallScreen) const SecuredByAppleCard(),
                const Spacer(),
                PaywallPageButtonTile(
                  productToPurchase:
                      isYearlyChosen ? plans.yearly : plans.weekly,
                ),
              ],
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
