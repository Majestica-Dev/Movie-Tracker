import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/paywall/widgets/features_tile_item.dart';

class FeaturesTile extends StatelessWidget {
  final double? spacing;
  
  const FeaturesTile({
    super.key,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      children: [
        const FeaturesTileItem(
          isEnable: true,
          title: "Add unlimited movies to your watchlist",
        ),
        SizedBox(height: spacing ?? t.spacing.x6),
        const FeaturesTileItem(
          isEnable: true,
          title: "Find perfect movie matches with unlimited AI use",
        ),
      ],
    );
  }
}
