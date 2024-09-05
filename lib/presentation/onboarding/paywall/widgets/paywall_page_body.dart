import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/widgets/paywall_page_header.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/widgets/paywall_page_bottom_tile.dart';

class PaywallPageBody extends StatelessWidget {
  const PaywallPageBody({
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
          gradient: LinearGradient(
            colors: context.mdsTheme.primaryGradient.colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: isSmallScreen ? 0 : 68),
            const PaywallPageHeader(),
            const Expanded(child: PaywallPageBottomTile())
          ],
        ),
      ),
    );
  }
}
