import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/gen/assets.gen.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';

class ExtraPage extends StatelessWidget {
  final VoidCallback changePage;

  const ExtraPage({
    required this.changePage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme.copyWith(colors: MTColors.glossy);

    return Container(
      padding: EdgeInsets.only(
        left: t.spacing.x5,
        bottom: 44,
        top: 78,
        right: t.spacing.x5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Assets.intro.background.path),
        ),
      ),
      child: Column(
        children: [
          Assets.onboarding.images.extraPageHeaderCard.image(),
          const Spacer(),
          SvgPicture.asset(Assets.onboarding.images.extraPageLogos1),
          SizedBox(height: t.spacing.x4),
          SvgPicture.asset(Assets.onboarding.images.extraPageLogos2),
          SizedBox(height: t.spacing.x4),
          Text(
            'Discover movies from all platform',
            style: t.textTheme.bodySRegular
                .copyWith(color: t.colors.neutralHighContent),
          ),
          const SizedBox(height: 34),
          MDSTheme(
            data: t,
            child: PrimaryButton(
              buttonSize: MDSButtonSize.L,
              expand: true,
              onPressed: changePage,
              text: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}
