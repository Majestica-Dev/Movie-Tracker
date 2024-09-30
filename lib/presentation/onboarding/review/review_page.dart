import 'package:movie_tracker/presentation/onboarding/review/widgets/onboarding_review_page_buttons_tile.dart';
import 'package:movie_tracker/presentation/onboarding/review/widgets/review_page_spike_illustartion_item.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';

import 'package:flutter/cupertino.dart';
import 'package:majestica_ds/majestica_ds.dart';

class ReviewPage extends StatelessWidget {
  final VoidCallback changePage;

  const ReviewPage({
    required this.changePage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final double screenHeight = MediaQuery.of(context).size.height;

    final bool isSmallScreen = screenHeight < 700;

    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.intro.background.path),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: t.spacing.x4,
          left: t.spacing.x4,
          top: isSmallScreen ? 40 : 78,
          bottom: 48,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
              child: Text(
                'Help us grow to fully unlock your movie discovery potential.',
                textAlign: TextAlign.center,
                style: t.textTheme.title1Bold.copyWith(
                  color: t.colors.neutralHighContent,
                  fontFamily: FontFamily.sFPro,
                ),
              ),
            ),
            const Spacer(),
            const ReviewPageSpikeIllustrationItem(),
            const Spacer(),
            OnboardingReviewPageButtonsTile(changePage: changePage),
          ],
        ),
      ),
    );
  }
}
