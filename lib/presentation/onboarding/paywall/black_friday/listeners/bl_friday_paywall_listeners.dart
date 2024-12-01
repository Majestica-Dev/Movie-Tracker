import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';
import 'package:movie_tracker/core/loggers/firebase_analytics_logger.dart';
import 'package:movie_tracker/presentation/core/managers/animations/cnafeti_animation.dart';
import 'package:movie_tracker/presentation/core/managers/animations/loading_dialog.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';

class BlFridayPaywallListeners extends StatelessWidget {
  final Widget child;
  final bool isFromOnboarding;

  const BlFridayPaywallListeners({
    required this.isFromOnboarding,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PurchaseActorBloc, PurchaseActorState>(
      listener: (context, purchaseActorState) {
        purchaseActorState.mapOrNull(
          inProgress: (_) => LoadingDialog.show(context),
          purchased: (purchasedState) {
            context.read<PremiumCheckerBloc>().add(
                  const PremiumCheckerEvent.check(),
                );

            if (isFromOnboarding) {
              context.router.pushAndPopUntil(
                const FavoriteMoviesChooserRoute(),
                predicate: (route) => false,
              );

              FirebaseAnalyticsLogger.onboardingPremiumSold();
            } else {
              context.router.pushAndPopUntil(
                HomeRoute(isFromOnboarding: isFromOnboarding),
                predicate: (_) => false,
              );
            }

            CanfetiAnimation.show();
          },
          failed: (failedState) {
            context.router.maybePop();

            const MDSToast(
              type: ToastType.neutral,
              message: 'Something went wrong',
              icon: PhosphorIcon(PhosphorIconsRegular.warning),
            ).show();
          },
        );
      },
      child: child,
    );
  }
}
