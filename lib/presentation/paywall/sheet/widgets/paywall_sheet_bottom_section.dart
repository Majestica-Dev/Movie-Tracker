import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart';
import 'package:movie_tracker/domain/purchases/entities/paywal_from.dart';

import 'package:movie_tracker/presentation/paywall/widgets/paywall_button_tile.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_plan_chooser_card.dart';

class PaywallSheetBottomSection extends StatefulWidget {
  final PaywallFrom paywallFrom;

  const PaywallSheetBottomSection({
    required this.paywallFrom,
    super.key,
  });

  @override
  State<PaywallSheetBottomSection> createState() =>
      _PaywallSheetBottomSectionState();
}

class _PaywallSheetBottomSectionState extends State<PaywallSheetBottomSection> {
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
                SizedBox(height: t.spacing.x6),
                if (!isSmallScreen) const SecuredByAppleCard(),
                const Spacer(),
                PaywallButtonTile(
                  productToPurchase:
                      isYearlyChosen ? plans.yearly : plans.weekly,
                  isFromOnboarding: false,
                  paywallFrom: widget.paywallFrom,
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
