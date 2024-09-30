import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/first_visit/first_visit_cubit.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/widgets/paywall_page_review_tile.dart';

class PaywallPageHeader extends StatelessWidget {
  const PaywallPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                context.read<FirstVisitCubit>().recordVisit();

                context.router.pushAndPopUntil(
                  const FavoriteMoviesChooserRoute(),
                  predicate: (route) => false,
                );
              },
              child: PhosphorIcon(
                PhosphorIconsRegular.x,
                size: 24,
                color: t.colors.primaryMedContent,
              ),
            ),
          ),
          SizedBox(height: t.spacing.x3),
          const PaywallPageReviewTile(),
        ],
      ),
    );
  }
}
