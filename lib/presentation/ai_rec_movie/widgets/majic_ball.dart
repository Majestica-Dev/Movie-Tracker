import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/gen/assets.gen.dart';

class MajicBall extends StatelessWidget {
  final bool isBig;
  const MajicBall({
    super.key,
    this.isBig = false,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: isBig ? 145 : 95,
          height: isBig ? 145 : 95,
          decoration: BoxDecoration(
            color: t.colors.primaryLowContainer,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: isBig ? 120 : 72,
          height: isBig ? 120 : 72,
          decoration: BoxDecoration(
            color: t.colors.primaryLowContainer,
            shape: BoxShape.circle,
          ),
        ),
        Lottie.asset(
          Assets.lotties.majicBall,
          width: isBig ? 120 : 80,
          height: isBig ? 120 : 80,
        ),
      ],
    );
  }
}
