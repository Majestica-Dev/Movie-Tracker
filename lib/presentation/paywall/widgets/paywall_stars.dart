import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';

class PaywallStars extends StatelessWidget {
  const PaywallStars({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: t.utilityColors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: t.utilityColors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: t.utilityColors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: t.utilityColors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: t.utilityColors.yellow,
          size: 18,
        ),
      ],
    );
  }
}
