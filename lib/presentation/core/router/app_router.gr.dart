// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/cupertino.dart' as _i11;
import 'package:flutter/material.dart' as _i14;
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart'
    as _i13;
import 'package:movie_tracker/domain/movie/entities/movie.dart' as _i12;
import 'package:movie_tracker/presentation/base/base_screen.dart' as _i1;
import 'package:movie_tracker/presentation/discover/discover_screen.dart'
    as _i2;
import 'package:movie_tracker/presentation/home/home_screen.dart' as _i3;
import 'package:movie_tracker/presentation/initial/initial_view.dart' as _i4;
import 'package:movie_tracker/presentation/intro/intro_screen.dart' as _i5;
import 'package:movie_tracker/presentation/movie_details/details_screen/movie_details_screen.dart'
    as _i6;
import 'package:movie_tracker/presentation/movie_details/overwiew/movie_overview_screen.dart'
    as _i7;
import 'package:movie_tracker/presentation/onboarding/onboarding_screen.dart'
    as _i8;
import 'package:movie_tracker/presentation/settings/settings_screen.dart'
    as _i9;

/// generated route for
/// [_i1.BaseScreen]
class BaseRoute extends _i10.PageRouteInfo<void> {
  const BaseRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.BaseScreen();
    },
  );
}

/// generated route for
/// [_i2.DiscoverScreen]
class DiscoverRoute extends _i10.PageRouteInfo<void> {
  const DiscoverRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.DiscoverScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.InitialScreen]
class InitialRoute extends _i10.PageRouteInfo<void> {
  const InitialRoute({List<_i10.PageRouteInfo>? children})
      : super(
          InitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.InitialScreen();
    },
  );
}

/// generated route for
/// [_i5.IntroScreen]
class IntroRoute extends _i10.PageRouteInfo<void> {
  const IntroRoute({List<_i10.PageRouteInfo>? children})
      : super(
          IntroRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.IntroScreen();
    },
  );
}

/// generated route for
/// [_i6.MovieDetailsScreen]
class MovieDetailsRoute extends _i10.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    required String id,
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
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

  final _i11.Key? key;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i7.MovieOverviewScreen]
class MovieOverviewRoute extends _i10.PageRouteInfo<MovieOverviewRouteArgs> {
  MovieOverviewRoute({
    required _i12.Movie movie,
    required bool isFromAi,
    required _i13.WatchStatus? watchStatus,
    _i14.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          MovieOverviewRoute.name,
          args: MovieOverviewRouteArgs(
            movie: movie,
            isFromAi: isFromAi,
            watchStatus: watchStatus,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieOverviewRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieOverviewRouteArgs>();
      return _i7.MovieOverviewScreen(
        movie: args.movie,
        isFromAi: args.isFromAi,
        watchStatus: args.watchStatus,
        key: args.key,
      );
    },
  );
}

class MovieOverviewRouteArgs {
  const MovieOverviewRouteArgs({
    required this.movie,
    required this.isFromAi,
    required this.watchStatus,
    this.key,
  });

  final _i12.Movie movie;

  final bool isFromAi;

  final _i13.WatchStatus? watchStatus;

  final _i14.Key? key;

  @override
  String toString() {
    return 'MovieOverviewRouteArgs{movie: $movie, isFromAi: $isFromAi, watchStatus: $watchStatus, key: $key}';
  }
}

/// generated route for
/// [_i8.OnboardingScreen]
class OnboardingRoute extends _i10.PageRouteInfo<void> {
  const OnboardingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i9.SettingsScreen]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.SettingsScreen();
    },
  );
}
