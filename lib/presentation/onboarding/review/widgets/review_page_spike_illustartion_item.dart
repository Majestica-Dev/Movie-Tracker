import 'package:majestica_ds/icons/icons.dart';

import '../../../core/widgets/icons/spike.dart';

import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

class ReviewPageSpikeIllustrationItem extends StatelessWidget {
  const ReviewPageSpikeIllustrationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return SizedBox(
      width: 292,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spike.left(
            height: 70,
            colorMode: SpikeColorMode.glossy,
          ),
          SizedBox(width: t.spacing.x2),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: EdgeInsets.only(left: index == 0 ? 0 : 7),
                      child: PhosphorIcon(
                        Icons.star,
                        size: 30,
                        color: t.colors.allWhite,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  '4 out of 5',
                  style: t.textTheme.title1Bold.copyWith(
                    color: t.colors.neutralHighContent,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Users say this app transformed their movie-watching experience.',
                  textAlign: TextAlign.center,
                  style: t.textTheme.bodyMRegular.copyWith(
                    color: t.colors.neutralMedContent,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: t.spacing.x2),
          const Spike.right(
            height: 70,
            colorMode: SpikeColorMode.glossy,
          ),
        ],
      ),
    );
  }
}
