// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i10;
import 'package:movie_tracker/domain/movie/entities/movie.dart' as _i9;
import 'package:movie_tracker/presentation/base/base_screen.dart' as _i1;
import 'package:movie_tracker/presentation/discover/discover_screen.dart'
    as _i2;
import 'package:movie_tracker/presentation/home/home_screen.dart' as _i3;
import 'package:movie_tracker/presentation/movie_details/movie_details_screen.dart'
    as _i4;
import 'package:movie_tracker/presentation/movie_details/overwiew/move_overview_screen.dart'
    as _i5;
import 'package:movie_tracker/presentation/settings/setting_screen.dart' as _i6;

/// generated route for
/// [_i1.BaseScreen]
class BaseRoute extends _i7.PageRouteInfo<void> {
  const BaseRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.BaseScreen();
    },
  );
}

/// generated route for
/// [_i2.DiscoverScreen]
class DiscoverRoute extends _i7.PageRouteInfo<void> {
  const DiscoverRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.DiscoverScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.MovieDetailsScreen]
class MovieDetailsRoute extends _i7.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    required String id,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailsRouteArgs>();
      return _i4.MovieDetailsScreen(
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

  final _i8.Key? key;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i5.MovieOverviewScreen]
class MovieOverviewRoute extends _i7.PageRouteInfo<MovieOverviewRouteArgs> {
  MovieOverviewRoute({
    required _i9.Movie movie,
    _i10.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          MovieOverviewRoute.name,
          args: MovieOverviewRouteArgs(
            movie: movie,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieOverviewRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieOverviewRouteArgs>();
      return _i5.MovieOverviewScreen(
        movie: args.movie,
        key: args.key,
      );
    },
  );
}

class MovieOverviewRouteArgs {
  const MovieOverviewRouteArgs({
    required this.movie,
    this.key,
  });

  final _i9.Movie movie;

  final _i10.Key? key;

  @override
  String toString() {
    return 'MovieOverviewRouteArgs{movie: $movie, key: $key}';
  }
}

/// generated route for
/// [_i6.SettingScreen]
class SettingRoute extends _i7.PageRouteInfo<void> {
  const SettingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SettingScreen();
    },
  );
}
