import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart';
import 'package:movie_tracker/core/extensions/store_product/store_product_x.dart';
import 'package:movie_tracker/domain/purchases/entities/paywal_from.dart';
import 'package:movie_tracker/gen/fonts.gen.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';

class BlFridayBottomTile extends StatelessWidget {
  const BlFridayBottomTile({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return BlocBuilder<SubscriptionsFetcherBloc, SubscriptionsFetcherState>(
      builder: (context, fetcherState) {
        return fetcherState.maybeMap(
          orElse: () => Center(
            child: CupertinoActivityIndicator(
              radius: 32,
              color: context.mdsTheme.colors.primaryHighContainer,
            ),
          ),
          successed: (succeededState) {
            final product = succeededState.subscriptionPlans.yearly19;

            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$49.99',
                        style: t.textTheme.title1Bold.copyWith(
                          color: t.colors.allWhite,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: t.colors.allWhite,
                          decorationThickness: 2,
                          fontFamily: FontFamily.sFPro,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "${product.priceAsString}/yr",
                        style: t.textTheme.title1Bold.copyWith(
                          color: const Color(0xffEB4E3D),
                          fontFamily: FontFamily.sFPro,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  MDSTheme(
                    data: t.copyWith(colors: MTColors.glossy),
                    child: PrimaryButton(
                      expand: true,
                      buttonSize: MDSButtonSize.L,
                      text: 'Claim Exclusive Offer',
                      onPressed: () {
                        context.read<PurchaseActorBloc>().add(
                              PurchaseActorEvent.buySubscription(
                                product: product,
                                paywallFrom: PaywallFrom.blackFriday,
                              ),
                            );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
