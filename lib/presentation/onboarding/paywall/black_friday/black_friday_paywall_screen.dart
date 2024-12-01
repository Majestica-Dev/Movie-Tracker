import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:majestica_ds/icons/icons.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/gen/assets.gen.dart';
import 'package:movie_tracker/gen/fonts.gen.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/scaffold.dart';
import 'package:movie_tracker/presentation/core/widgets/gradient_text.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/black_friday/listeners/bl_friday_paywall_listeners.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/black_friday/widgets/bl_fridat_features_list.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/black_friday/widgets/bl_friday_bottom_tile.dart';

@RoutePage()
class BlackFridayPaywallScreen extends StatelessWidget {
  final bool isFromOnboarding;

  const BlackFridayPaywallScreen({
    required this.isFromOnboarding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final double screenHeight = MediaQuery.of(context).size.height;

    final bool isSmallScreen = screenHeight < 700;

    final double topPadding = isSmallScreen ? 40 : 78;

    return BlFridayPaywallListeners(
      isFromOnboarding: isFromOnboarding,
      child: MTScaffold(
        backgroundColor: const Color(0xFF10183C),
        body: Padding(
          padding: EdgeInsets.only(
            left: t.spacing.x4,
            top: topPadding,
            bottom: isSmallScreen ? t.spacing.x2 : 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.router.pushAndPopUntil(
                        HomeRoute(isFromOnboarding: true),
                        predicate: (_) => false,
                      );
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: PhosphorIcon(
                        PhosphorIconsRegular.x,
                        size: 24,
                        color: const Color(0xff9397AB).withOpacity(.4),
                      ),
                    ),
                  ),
                  SizedBox(width: t.spacing.x4),
                ],
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.blackFridayTitle,
                    ),
                    Positioned(
                      right: 0,
                      top: 30,
                      child: SvgPicture.asset(
                        Assets.icons.a65percentBadge,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Lifetime Discount ',
                style: t.textTheme.titleLargeBold.copyWith(
                  color: t.colors.allWhite,
                  fontFamily: FontFamily.sFPro,
                ),
              ),
              GradientText(
                text: 'Limited',
                style: t.textTheme.titleLargeBold.copyWith(
                  color: t.colors.highContainerContent,
                  fontFamily: FontFamily.sFPro,
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFD27D08),
                    Color.fromARGB(255, 137, 95, 36),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              const BlFridatFeaturesList(),
              const Spacer(),
              const BlFridayBottomTile()
            ],
          ),
        ),
      ),
    );
  }
}
