// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i12;
import 'package:flutter/material.dart' as _i16;
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart'
    as _i15;
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart'
    as _i14;
import 'package:movie_tracker/domain/movie/entities/movie.dart' as _i13;
import 'package:movie_tracker/presentation/base/base_screen.dart' as _i1;
import 'package:movie_tracker/presentation/discover/discover_screen.dart'
    as _i2;
import 'package:movie_tracker/presentation/home/home_screen.dart' as _i4;
import 'package:movie_tracker/presentation/initial/initial_view.dart' as _i5;
import 'package:movie_tracker/presentation/intro/intro_screen.dart' as _i6;
import 'package:movie_tracker/presentation/movie_details/details_screen/movie_details_screen.dart'
    as _i7;
import 'package:movie_tracker/presentation/movie_details/overwiew/movie_overview_screen.dart'
    as _i8;
import 'package:movie_tracker/presentation/onboarding/favorite_movies/favorite_movies_chooser_screen.dart'
    as _i3;
import 'package:movie_tracker/presentation/onboarding/onboarding_screen.dart'
    as _i9;
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
/// [_i3.FavoriteMoviesChooserScreen]
class FavoriteMoviesChooserRoute extends _i11.PageRouteInfo<void> {
  const FavoriteMoviesChooserRoute({List<_i11.PageRouteInfo>? children})
      : super(
          FavoriteMoviesChooserRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteMoviesChooserRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.FavoriteMoviesChooserScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
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
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.InitialScreen]
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
      return const _i5.InitialScreen();
    },
  );
}

/// generated route for
/// [_i6.IntroScreen]
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
      return const _i6.IntroScreen();
    },
  );
}

/// generated route for
/// [_i7.MovieDetailsScreen]
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
      return _i7.MovieDetailsScreen(
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
/// [_i8.MovieOverviewScreen]
class MovieOverviewRoute extends _i11.PageRouteInfo<MovieOverviewRouteArgs> {
  MovieOverviewRoute({
    required _i13.Movie movie,
    required bool isFromAi,
    required _i14.WatchStatus? watchStatus,
    required _i15.MovieAiRecFormState? movieAiRecFormState,
    _i16.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          MovieOverviewRoute.name,
          args: MovieOverviewRouteArgs(
            movie: movie,
            isFromAi: isFromAi,
            watchStatus: watchStatus,
            movieAiRecFormState: movieAiRecFormState,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieOverviewRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieOverviewRouteArgs>();
      return _i8.MovieOverviewScreen(
        movie: args.movie,
        isFromAi: args.isFromAi,
        watchStatus: args.watchStatus,
        movieAiRecFormState: args.movieAiRecFormState,
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
    required this.movieAiRecFormState,
    this.key,
  });

  final _i13.Movie movie;

  final bool isFromAi;

  final _i14.WatchStatus? watchStatus;

  final _i15.MovieAiRecFormState? movieAiRecFormState;

  final _i16.Key? key;

  @override
  String toString() {
    return 'MovieOverviewRouteArgs{movie: $movie, isFromAi: $isFromAi, watchStatus: $watchStatus, movieAiRecFormState: $movieAiRecFormState, key: $key}';
  }
}

/// generated route for
/// [_i9.OnboardingScreen]
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
      return const _i9.OnboardingScreen();
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
