import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:majestica_ds/majestica_ds.dart';

class OnboardingHeaderIcon extends StatelessWidget {
  final String iconPath;

  const OnboardingHeaderIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: t.colors.primaryLowContainer,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 115,
          height: 115,
          decoration: BoxDecoration(
            color: t.colors.primaryLowContainer,
            shape: BoxShape.circle,
          ),
        ),
        SvgPicture.asset(
          iconPath,
          width: 90,
          height: 90,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
