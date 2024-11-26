import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/onboarding/before_after/widgets/before_after_card.dart';

class BeforeAfterPage extends StatelessWidget {
  final VoidCallback changePage;

  const BeforeAfterPage({
    required this.changePage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final double screenHeight = MediaQuery.of(context).size.height;
    final bool isSmallScreen = screenHeight < 700;
    final double bottomPadding = isSmallScreen ? 30 : 82;

    return Padding(
      padding: EdgeInsets.only(
        right: t.spacing.x4,
        left: t.spacing.x4,
        bottom: bottomPadding,
        top: 78,
      ),
      child: Column(
        children: [
          Text(
            'Your Magical Movie Companion',
            style: t.textTheme.title1Bold.copyWith(
              color: t.colors.neutralHighContent,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: t.spacing.x2),
          Text(
            'Handpicked Movies,\nPerfect for Your Mood and Joy.',
            style: t.textTheme.bodyMRegular.copyWith(
              color: t.colors.neutralMedContent,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: t.spacing.x7),
                  child: const BeforeAfterCard(
                    isBefore: true,
                    titles: [
                      'Endless Searching',
                      'Bad Movie Picks',
                      'Disappointing Movie Time',
                      'Stuck in Trailers',
                      'Wasted Movie Fun',
                    ],
                  ),
                ),
              ),
              SizedBox(width: t.spacing.x3),
              const Expanded(
                child: BeforeAfterCard(
                  isBefore: false,
                  titles: [
                    'Perfect Movie Match',
                    'Immediate Movie Joy',
                    'Handpicked for You',
                    'Decision-Free Watching',
                    'Relaxed Watching',
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          PrimaryButton(
            onPressed: changePage,
            text: 'Continue',
            expand: true,
            buttonSize: MDSButtonSize.L,
          ),
        ],
      ),
    );
  }
}
