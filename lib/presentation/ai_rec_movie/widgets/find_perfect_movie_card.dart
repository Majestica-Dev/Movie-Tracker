import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/presentation/ai_rec_movie/form/movie_ai_rec_form_sheet.dart';

import 'package:movie_tracker/presentation/ai_rec_movie/widgets/majic_ball.dart';
import 'package:movie_tracker/presentation/core/extensions/context/build_context_x.dart';
import 'package:movie_tracker/presentation/paywall/sheet/paywall_sheet.dart';

class FindPerfectMovieCard extends StatelessWidget {
  const FindPerfectMovieCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: () {
        if (context.generateAiEnabled) {
          MovieAiRecFormSheet.show(context);
        } else {
          PaywallSheet.show(context);
        }
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: t.spacing.x3,
          vertical: t.spacing.x4,
        ),
        decoration: BoxDecoration(
            color: t.colors.surface,
            borderRadius: BorderRadius.circular(t.spacing.x3)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MajicBall(),
            SizedBox(width: t.spacing.x5),
            Expanded(
              child: Text(
                'Find your next perfect movie',
                style: t.textTheme.title3Bold.copyWith(
                  color: t.colors.neutralHighContent,
                ),
              ),
            ),
            SizedBox(width: t.spacing.x5),
            PhosphorIcon(
              PhosphorIconsRegular.caretRight,
              size: 24,
              color: t.colors.neutralHighContainer,
            )
          ],
        ),
      ),
    );
  }
}
