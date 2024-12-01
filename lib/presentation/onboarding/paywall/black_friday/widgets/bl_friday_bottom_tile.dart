import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/application/in_app_purchases/subscriptions_fetcher/subscriptions_fetcher_bloc.dart';
import 'package:movie_tracker/core/extensions/store_product/store_product_x.dart';
import 'package:movie_tracker/domain/purchases/entities/paywal_from.dart';
import 'package:movie_tracker/gen/fonts.gen.dart';
import 'package:movie_tracker/presentation/core/constants/app_url.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';
import 'package:movie_tracker/presentation/core/utils/url_launcher.dart';

class BlFridayBottomTile extends StatelessWidget {
  const BlFridayBottomTile({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final double screenHeight = MediaQuery.of(context).size.height;

    final bool isSmallScreen = screenHeight < 700;

    return BlocBuilder<SubscriptionsFetcherBloc, SubscriptionsFetcherState>(
      builder: (context, fetcherState) {
        return fetcherState.maybeMap(
          orElse: () => Center(
            child: CupertinoActivityIndicator(
              radius: 22,
              color: context.mdsTheme.colors.allWhite,
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
                        "${product.priceAsString}/year",
                        style: t.textTheme.title1Bold.copyWith(
                          color: const Color(0xffEB4E3D),
                          fontFamily: FontFamily.sFPro,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: isSmallScreen ? 20 : 40),
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
                  SizedBox(height: t.spacing.x2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => UrlLauncher.launchUrl(MTUrls.terms),
                        child: Text(
                          'Terms & Conditions',
                          maxLines: 2,
                          style: t.textTheme.bodyXSRegular.copyWith(
                            color: t.colors.allWhite,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<PurchaseActorBloc>().add(
                                const PurchaseActorEvent.restore(),
                              );
                        },
                        child: Text(
                          'Restore purchases',
                          maxLines: 1,
                          style: t.textTheme.bodyXSRegular.copyWith(
                            color: t.colors.allWhite,
                            fontFamily: FontFamily.sFPro,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            UrlLauncher.launchUrl(MTUrls.privacyPolicy),
                        child: Text(
                          'Privacy Policy',
                          maxLines: 1,
                          style: t.textTheme.bodyXSRegular.copyWith(
                            color: t.colors.allWhite,
                          ),
                        ),
                      ),
                    ],
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
