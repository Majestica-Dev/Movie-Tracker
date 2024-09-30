import 'package:auto_route/auto_route.dart';
import 'package:movie_tracker/presentation/core/managers/animations/cnafeti_animation.dart';
import 'package:movie_tracker/presentation/core/managers/animations/loading_dialog.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import '../../../application/first_visit/first_visit_cubit.dart';
import '../../../application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import '../../../application/premium_checker/premium_checker_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class IntroScreenListener extends StatelessWidget {
  final Widget child;

  const IntroScreenListener({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PurchaseActorBloc, PurchaseActorState>(
      listener: (context, purchaseActorState) {
        purchaseActorState.mapOrNull(
          failed: (_) {
            context.router.maybePop();

            const MDSToast(
              type: ToastType.neutral,
              message: 'Something went wrong',
              icon: PhosphorIcon(PhosphorIconsRegular.warning),
            ).show();
          },
          inProgress: (_) {
            LoadingDialog.show(context);
          },
          restored: (_) {
            context
                .read<PremiumCheckerBloc>()
                .add(const PremiumCheckerEvent.check());

            context.router.pushAndPopUntil(
              const FavoriteMoviesChooserRoute(),
              predicate: (route) => false,
            );

            CanfetiAnimation.show();

            context.read<FirstVisitCubit>().recordVisit();

            const MDSToast(
              type: ToastType.success,
              message: 'Successfully restored!',
              icon: PhosphorIcon(PhosphorIconsRegular.checkCircle),
            ).show();
          },
          noAccountsToRestore: (_) {
            context.router.maybePop();

            const MDSToast(
              type: ToastType.neutral,
              message: 'No purchases to restore',
              icon: PhosphorIcon(PhosphorIconsRegular.warning),
            ).show();
          },
        );
      },
      child: child,
    );
  }
}
