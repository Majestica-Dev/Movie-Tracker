import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/ai_rec/use_count/movie_ai_rec_use_count_cubit.dart';
import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';
import 'package:movie_tracker/core/constants/freemium_limits.dart';
import 'package:movie_tracker/domain/purchases/entities/paywal_from.dart';

import 'package:movie_tracker/presentation/ai_rec_movie/form/movie_ai_rec_form_sheet.dart';

import 'package:movie_tracker/presentation/ai_rec_movie/widgets/majic_ball.dart';
import 'package:movie_tracker/presentation/core/extensions/context/build_context_x.dart';
import 'package:movie_tracker/presentation/core/extensions/premium_checker/premium_checker_x.dart';
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
          MovieAiRecFormSheet.show(
            context,
            null,
          );
        } else {
          PaywallSheet.show(
            context,
            paywalFrom: PaywallFrom.aiRecommendation,
          );
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find your next perfect movie',
                    style: t.textTheme.title3Bold.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                  ),
                  BlocBuilder<PremiumCheckerBloc, PremiumCheckerState>(
                    builder: (context, state) {
                      if (state.hasPremium) return const SizedBox();

                      final aiRecUseCount =
                          context.watch<MovieAiRecUseCountCubit>().state;

                      return Padding(
                        padding: EdgeInsets.only(top: t.spacing.x5),
                        child: Text(
                          'Left $aiRecUseCount of ${FreemiumLimits.aiGeneratedMovies}',
                          style: t.textTheme.bodySRegular.copyWith(
                            color: t.colors.neutralMedContent,
                          ),
                        ),
                      );
                    },
                  )
                ],
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
