// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:movie_tracker/presentation/base/base_screen.dart' as _i1;
import 'package:movie_tracker/presentation/discover/discover_screen.dart'
    as _i2;
import 'package:movie_tracker/presentation/home/home_screen.dart' as _i3;
import 'package:movie_tracker/presentation/insight/insight_screen.dart' as _i4;

/// generated route for
/// [_i1.BaseScreen]
class BaseRoute extends _i5.PageRouteInfo<void> {
  const BaseRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.BaseScreen();
    },
  );
}

/// generated route for
/// [_i2.DiscoverScreen]
class DiscoverRoute extends _i5.PageRouteInfo<void> {
  const DiscoverRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.DiscoverScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.InsightScreen]
class InsightRoute extends _i5.PageRouteInfo<void> {
  const InsightRoute({List<_i5.PageRouteInfo>? children})
      : super(
          InsightRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsightRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.InsightScreen();
    },
  );
}
