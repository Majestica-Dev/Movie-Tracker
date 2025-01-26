import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/app_store_review_checker/app_store_review_checker_cubit.dart';
import 'package:movie_tracker/application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart';
import 'package:movie_tracker/core/extensions/store_product/store_product_x.dart';
import 'package:movie_tracker/domain/purchases/entities/subscription_plans.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/widgets/features/premium_features_card.dart';
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
          successed: (succeedState) {
            final isInReview =
                context.watch<AppStoreReviewCheckerCubit>().state;

            final plans = succeedState.subscriptionPlans;

            return Column(
              children: [
                const Spacer(),
                if (isInReview)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
                    child: const PremiumFeaturesCard(),
                  ),
                if (!isInReview)
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
                Text(
                  title(plans),
                  style: t.textTheme.bodyMRegular.copyWith(
                    color: t.colors.neutralHighContent,
                  ),
                ),
                SizedBox(height: t.spacing.x2),
                PaywallPageButtonTile(
                  isInReview: isInReview,
                  productToPurchase:
                      isYearlyChosen ? plans.yearly : plans.monthly9,
                ),
              ],
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  String title(SubscriptionPlans plans) {
    if (isYearlyChosen) {
      return 'Yearly ${plans.yearly.priceAsString}';
    } else {
      return 'Monthly ${plans.monthly9.priceAsString}';
    }
  }
}
