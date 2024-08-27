// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i12;
import 'package:flutter/material.dart' as _i14;
import 'package:movie_tracker/domain/movie/entities/movie.dart' as _i13;
import 'package:movie_tracker/presentation/base/base_screen.dart' as _i1;
import 'package:movie_tracker/presentation/discover/discover_screen.dart'
    as _i2;
import 'package:movie_tracker/presentation/home/home_screen.dart' as _i3;
import 'package:movie_tracker/presentation/initial/initial_view.dart' as _i4;
import 'package:movie_tracker/presentation/intro/intro_screen.dart' as _i5;
import 'package:movie_tracker/presentation/movie_details/movie_details_screen.dart'
    as _i6;
import 'package:movie_tracker/presentation/movie_details/overwiew/move_overview_screen.dart'
    as _i7;
import 'package:movie_tracker/presentation/onboarding/onboarding_screen.dart'
    as _i8;
import 'package:movie_tracker/presentation/settings/setting_screen.dart' as _i9;
import 'package:movie_tracker/presentation/settings/settings_screen.dart'
    as _i10;

/// generated route for
/// [_i1.BaseScreen]
class BaseRoute extends _i11.PageRouteInfo<void> {
  const BaseRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.BaseScreen();
    },
  );
}

/// generated route for
/// [_i2.DiscoverScreen]
class DiscoverRoute extends _i11.PageRouteInfo<void> {
  const DiscoverRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.DiscoverScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.InitialScreen]
class InitialRoute extends _i11.PageRouteInfo<void> {
  const InitialRoute({List<_i11.PageRouteInfo>? children})
      : super(
          InitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.InitialScreen();
    },
  );
}

/// generated route for
/// [_i5.IntroScreen]
class IntroRoute extends _i11.PageRouteInfo<void> {
  const IntroRoute({List<_i11.PageRouteInfo>? children})
      : super(
          IntroRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.IntroScreen();
    },
  );
}

/// generated route for
/// [_i6.MovieDetailsScreen]
class MovieDetailsRoute extends _i11.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    required String id,
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailsRouteArgs>();
      return _i6.MovieDetailsScreen(
        id: args.id,
        key: args.key,
      );
    },
  );
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final _i12.Key? key;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i7.MovieOverviewScreen]
class MovieOverviewRoute extends _i11.PageRouteInfo<MovieOverviewRouteArgs> {
  MovieOverviewRoute({
    required _i13.Movie movie,
    required bool isFromAI,
    _i14.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          MovieOverviewRoute.name,
          args: MovieOverviewRouteArgs(
            movie: movie,
            isFromAI: isFromAI,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieOverviewRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieOverviewRouteArgs>();
      return _i7.MovieOverviewScreen(
        movie: args.movie,
        isFromAI: args.isFromAI,
        key: args.key,
      );
    },
  );
}

class MovieOverviewRouteArgs {
  const MovieOverviewRouteArgs({
    required this.movie,
    required this.isFromAI,
    this.key,
  });

  final _i13.Movie movie;

  final bool isFromAI;

  final _i14.Key? key;

  @override
  String toString() {
    return 'MovieOverviewRouteArgs{movie: $movie, isFromAI: $isFromAI, key: $key}';
  }
}

/// generated route for
/// [_i8.OnboardingScreen]
class OnboardingRoute extends _i11.PageRouteInfo<void> {
  const OnboardingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i9.SettingScreen]
class SettingRoute extends _i11.PageRouteInfo<void> {
  const SettingRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SettingScreen();
    },
  );
}

/// generated route for
/// [_i10.SettingsScreen]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.SettingsScreen();
    },
  );
}
