import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class PaywallSheetHeader extends StatelessWidget {
  const PaywallSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return MDSBottomSheetHeader(
      leading: GestureDetector(
        onTap: () => context.router.maybePop(),
        child: PhosphorIcon(
          PhosphorIconsRegular.x,
          size: 24,
          color: t.colors.neutralHighContent,
        ),
      ),
      showBorderLine: false,
    );
  }
}
