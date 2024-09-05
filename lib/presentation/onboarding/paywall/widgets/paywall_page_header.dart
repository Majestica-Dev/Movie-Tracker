import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/fisrt_visit/first_visit_cubit.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_review_with_stars_tile.dart';

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
                  const HomeRoute(),
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
          const PaywallReviewWithStarsTile(),
        ],
      ),
    );
  }
}
