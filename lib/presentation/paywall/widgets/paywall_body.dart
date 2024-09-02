import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_body_bottom_section.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_body_top_section.dart';

class PaywallBody extends StatelessWidget {
  final bool isFromOnboarding;

  const PaywallBody({
    this.isFromOnboarding = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme.copyWith(colors: MTColors.glossy);

    final double screenHeight = MediaQuery.of(context).size.height;

    final bool isSmallScreen = screenHeight < 700;

    return MDSTheme(
      data: t,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: isFromOnboarding
              ? LinearGradient(
                  colors: context.mdsTheme.primaryGradient.colors,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: Column(
          children: [
            SizedBox(height: isSmallScreen ? 0 : 68),
            PaywallBodyTopSection(
              isFromOnboarding: isFromOnboarding,
            ),
            Expanded(
              child: PaywallBodyBottomSection(
                isFromOnboarding: isFromOnboarding,
              ),
            )
          ],
        ),
      ),
    );
  }
}
