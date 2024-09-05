import 'package:flutter/widgets.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class FeaturesTileItem extends StatelessWidget {
  final bool isEnable;
  final String title;

  const FeaturesTileItem({
    required this.isEnable,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      children: [
        PhosphorIcon(
          isEnable
              ? PhosphorIconsFill.checkCircle
              : PhosphorIconsDuotone.checkCircle,
          size: t.spacing.x7,
          color: t.colors.primaryHighContent,
        ),
        SizedBox(width: t.spacing.x3),
        Expanded(
          child: Text(
            title,
            maxLines: 2,
            style: t.textTheme.bodyMBold.copyWith(
              color: t.colors.neutralHighContent,
            ),
          ),
        )
      ],
    );
  }
}
