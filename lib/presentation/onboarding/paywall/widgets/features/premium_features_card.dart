import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/widgets/features/prmium_features_card_item.dart';

class PremiumFeaturesCard extends StatelessWidget {
  const PremiumFeaturesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Container(
      padding: EdgeInsets.all(t.spacing.x4),
      decoration: BoxDecoration(
        color: t.colors.primaryLowContainer,
        borderRadius: BorderRadius.circular(t.spacing.x4),
      ),
      child: Column(
        children: [
          const PremiumFeaturesCardItem(
            title: 'Unlimited Movies',
          ),
          SizedBox(height: t.spacing.x4),
          const PremiumFeaturesCardItem(
            title: 'Unlimited AI Recommendations',
          ),
          SizedBox(height: t.spacing.x4),
          const PremiumFeaturesCardItem(
            title: 'Discover Hidden Gems',
          ),
          SizedBox(height: t.spacing.x4),
          const PremiumFeaturesCardItem(
            title: 'Icloud Sync & Backup',
            isSoon: true,
          ),
        ],
      ),
    );
  }
}
