import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';
import 'package:movie_tracker/presentation/onboarding/before_after/widgets/before_after_tile.dart';

class BeforeAfterCard extends StatelessWidget {
  final bool isBefore;

  final List<String> titles;

  const BeforeAfterCard({
    required this.isBefore,
    required this.titles,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme.copyWith(
      colors: isBefore ? MTColors.colors : MTColors.glossy,
    );

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: t.spacing.x2,
        vertical: t.spacing.x6,
      ),
      decoration: BoxDecoration(
        color: isBefore ? t.colors.background : null,
        gradient: isBefore
            ? null
            : t.copyWith(colors: MTColors.colors).primaryGradient,
        borderRadius: BorderRadius.circular(
          t.spacing.x4,
        ),
      ),
      child: Column(
        children: [
          Text(
            isBefore ? 'Turn This' : 'Into This',
            style: t.textTheme.title2Bold.copyWith(
              color: t.colors.neutralHighContent,
            ),
          ),
          SizedBox(height: t.spacing.x8),
          isBefore
              ? PhosphorIcon(
                  PhosphorIconsRegular.heartBreak,
                  color: t.colors.neutralHighContent,
                  size: 64,
                )
              : LightShadow(
                  child: PhosphorIcon(
                    PhosphorIconsFill.heart,
                    color: t.colors.allWhite,
                    size: 64,
                  ),
                ),
          SizedBox(height: t.spacing.x8),
          for (var i = 0; i < titles.length; i++) ...[
            Padding(
              padding: EdgeInsets.only(
                bottom: i == titles.length - 1 ? 0 : t.spacing.x2,
              ),
              child: BeforeAfterTile(
                isBefore: isBefore,
                title: titles[i],
              ),
            )
          ],
        ],
      ),
    );
  }
}
