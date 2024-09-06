import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

class HomeScreenTabBar extends StatelessWidget {
  const HomeScreenTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return LayoutBuilder(builder: (context, constraints) {
      final tabWidth =
          (constraints.maxWidth - (2 * t.spacing.x1) - (2 * t.spacing.x05)) / 3;

      return MDSTabBar(
        colorMode: ColorMode.neutral,
        isScrollable: true,
        tabs: [
          MDSTab(
            title: 'My Favorites',
            width: tabWidth,
          ),
          MDSTab(
            title: 'To Watch',
            width: tabWidth,
          ),
          MDSTab(
            title: 'Watched',
            width: tabWidth,
          ),
        ],
      );
    });
  }
}
