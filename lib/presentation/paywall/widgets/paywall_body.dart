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

    return MDSTheme(
      data: t,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: context.mdsTheme.primaryGradient.colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 68),
            PaywallBodyTopSection(
              isFromOnboarding: isFromOnboarding,
            ),
            const Expanded(
              child: PaywallBodyBottomSection(),
            )
          ],
        ),
      ),
    );
  }
}
