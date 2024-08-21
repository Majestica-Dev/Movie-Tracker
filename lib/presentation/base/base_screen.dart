import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';

import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:majestica_ds/icons/icons.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PageRouteInfo<dynamic>> routes = [
      const HomeRoute(),
      const DiscoverRoute(),
      const InsightRoute(),
    ];

    final t = context.mdsTheme;

    return AutoTabsScaffold(
      backgroundColor: t.colors.background,
      animationDuration: Duration.zero,
      routes: routes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return MDSBottomNavBar(
          currentIndex: tabsRouter.activeIndex,
          onSelect: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: const [
            MDSBottomNavBarItem(
              icon: PhosphorIcon(PhosphorIconsFill.filmReel),
              label: 'My Watchlist',
            ),
            MDSBottomNavBarItem(
              icon: PhosphorIcon(PhosphorIconsFill.compass),
              label: 'Discover',
            ),
            MDSBottomNavBarItem(
              icon: PhosphorIcon(PhosphorIconsFill.user),
              label: 'Insights',
            ),
          ],
        );
      },
    );
  }
}
