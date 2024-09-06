import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/widgets/icons/spike.dart';

class StSpikeIll extends StatelessWidget {
  final double spikeWith;
  final double spikeHeight;
  final double spikeMarginToText;
  final TextStyle titleTextStyle;
  final String title;
  final String subTitle;

  const StSpikeIll({
    super.key,
    required this.spikeWith,
    required this.spikeHeight,
    required this.spikeMarginToText,
    required this.titleTextStyle,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spike.left(
          width: 44,
          height: 82.16,
          colorMode: SpikeColorMode.glossy,
        ),
        SizedBox(width: spikeMarginToText),
        Column(
          children: [
            Text(
              title,
              style: titleTextStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              subTitle,
              style: t.textTheme.bodyMRegular.h140.copyWith(
                color: t.colors.neutralHighContent,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(width: spikeMarginToText),
        const Spike.right(
          width: 44,
          height: 82.16,
          colorMode: SpikeColorMode.glossy,
        ),
      ],
    );
  }
}
