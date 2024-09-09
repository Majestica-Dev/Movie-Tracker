import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/gen/assets.gen.dart';
import 'package:movie_tracker/gen/fonts.gen.dart';

import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';

import 'package:movie_tracker/presentation/onboarding/social_trust/widgets/st_spike_ill.dart';

class SocialTrustPage extends StatelessWidget {
  final VoidCallback changePage;

  const SocialTrustPage({
    super.key,
    required this.changePage,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme.copyWith(colors: MTColors.glossy);

    return Container(
      padding: EdgeInsets.only(
        top: 88.5,
        left: t.spacing.x5,
        right: t.spacing.x5,
        bottom: 54,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.intro.background.path,
          ),
        ),
      ),
      child: MDSTheme(
        data: t,
        child: Column(
          children: [
            const Spacer(),
            StSpikeIll(
              spikeWith: 44,
              spikeHeight: 82,
              spikeMarginToText: 15,
              titleTextStyle: TextStyle(
                color: t.colors.neutralHighContent,
                fontFamily: FontFamily.newYork,
                fontWeight: FontWeight.w600,
                fontSize: 41,
                letterSpacing: 0.65,
              ),
              title: '20000',
              subTitle: 'Happy Users',
            ),
            const SizedBox(height: 48),
            StSpikeIll(
              spikeWith: 38.6,
              spikeHeight: 72,
              spikeMarginToText: 13,
              titleTextStyle: TextStyle(
                color: t.colors.neutralHighContent,
                fontFamily: FontFamily.newYork,
                fontWeight: FontWeight.w600,
                fontSize: 36,
                letterSpacing: 0.5,
              ),
              title: '4.7 stars',
              subTitle: 'Global Rating',
            ),
            const SizedBox(height: 48),
            StSpikeIll(
              spikeWith: 32,
              spikeHeight: 60,
              spikeMarginToText: 11,
              titleTextStyle: TextStyle(
                color: t.colors.neutralHighContent,
                fontFamily: FontFamily.newYork,
                fontWeight: FontWeight.w600,
                fontSize: 30,
                letterSpacing: 0.4,
              ),
              title: 'AI',
              subTitle: 'Powered',
            ),
            const Spacer(),
            PrimaryButton(
              expand: true,
              buttonSize: MDSButtonSize.L,
              onPressed: changePage,
              text: 'Continue',
            )
          ],
        ),
      ),
    );
  }
}
