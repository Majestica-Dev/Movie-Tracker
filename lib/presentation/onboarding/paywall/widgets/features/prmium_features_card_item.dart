import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class PremiumFeaturesCardItem extends StatelessWidget {
  final String title;
  final bool isSoon;

  const PremiumFeaturesCardItem({
    required this.title,
    this.isSoon = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      children: [
        Flexible(
          child: Opacity(
            opacity: isSoon ? 0.5 : 1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PhosphorIcon(
                  PhosphorIconsDuotone.checkCircle,
                  color: t.colors.primaryHighContent,
                  size: t.spacing.x7,
                ),
                SizedBox(width: t.spacing.x3),
                Flexible(
                  child: Text(
                    title,
                    style: t.textTheme.bodyMBold.copyWith(
                      color: t.colors.neutralHighContent,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: t.spacing.x2),
              ],
            ),
          ),
        ),
        if (isSoon)
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: t.spacing.x2,
              vertical: t.spacing.x1,
            ),
            decoration: BoxDecoration(
                color: t.colors.neutralMedContainer,
                borderRadius: BorderRadius.circular(t.borderRadius.all)),
            child: Text(
              'Soon',
              style: t.textTheme.bodyXSRegular
                  .copyWith(color: t.colors.neutralHighContent),
            ),
          )
      ],
    );
  }
}
