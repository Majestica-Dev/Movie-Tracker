import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';

class BeforeAfterTile extends StatelessWidget {
  final String title;
  final bool isBefore;

  const BeforeAfterTile({
    required this.title,
    required this.isBefore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme.copyWith(
      colors: isBefore ? MTColors.colors : MTColors.glossy,
    );

    return SizedBox(
      height: 34,
      child: Row(
        children: [
          PhosphorIcon(
            isBefore ? PhosphorIconsRegular.x : PhosphorIconsBold.check,
            size: t.spacing.x3,
            color: isBefore ? Colors.red : t.colors.allWhite,
          ),
          SizedBox(width: t.spacing.x2),
          Flexible(
            child: AutoSizeText(
              title,
              maxLines: 2,
              textScaleFactor: 1,
              style: t.textTheme.bodySBold.copyWith(
                color: t.colors.neutralHighContent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
