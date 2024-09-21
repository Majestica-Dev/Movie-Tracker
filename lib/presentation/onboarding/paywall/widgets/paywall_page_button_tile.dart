import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/in_app_purchases/purchase_actor/purchase_actor_bloc.dart';
import 'package:movie_tracker/domain/purchases/entities/paywal_from.dart';
import 'package:movie_tracker/presentation/core/widgets/launch_buttons_tile.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class PaywallPageButtonTile extends StatelessWidget {
  final StoreProduct productToPurchase;

  const PaywallPageButtonTile({
    required this.productToPurchase,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Container(
      padding: EdgeInsets.all(t.spacing.x4).copyWith(
        bottom: 34,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff6B66DA),
            Color(0xff4D48BC),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          PrimaryButton(
            text: 'Continue',
            buttonSize: MDSButtonSize.L,
            expand: true,
            onPressed: () {
              context.read<PurchaseActorBloc>().add(
                    PurchaseActorEvent.buySubscription(
                      product: productToPurchase,
                      paywallFrom: PaywallFrom.onboarding,
                    ),
                  );
            },
          ),
          SizedBox(height: t.spacing.x3),
          const LaunchButtonsTile(),
        ],
      ),
    );
  }
}
