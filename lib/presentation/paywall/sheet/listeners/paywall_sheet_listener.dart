import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/fisrt_visit/first_visit_cubit.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';
import 'package:movie_tracker/presentation/core/managers/animations/cnafeti_animation.dart';
import 'package:movie_tracker/presentation/core/managers/animations/loading_dialog.dart';

class PaywallSheetListener extends StatelessWidget {
  final Widget child;

  const PaywallSheetListener({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PurchaseActorBloc, PurchaseActorState>(
      listener: (context, purchaseActorState) {
        purchaseActorState.mapOrNull(
          purchased: (purchasedState) {
            context.read<PremiumCheckerBloc>().add(
                  const PremiumCheckerEvent.check(),
                );

            context.router.popUntilRoot();

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
          restored: (_) {
            context.read<PremiumCheckerBloc>().add(
                  const PremiumCheckerEvent.check(),
                );

            context.router.popUntilRoot();

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
          inProgress: (_) => LoadingDialog.show(context),
        );
      },
      child: child,
    );
  }
}
