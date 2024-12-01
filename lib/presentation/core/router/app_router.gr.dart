// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i13;
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart'
    as _i17;
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart'
    as _i16;
import 'package:movie_tracker/domain/movie/entities/movie.dart' as _i15;
import 'package:movie_tracker/presentation/base/base_screen.dart' as _i1;
import 'package:movie_tracker/presentation/discover/discover_screen.dart'
    as _i3;
import 'package:movie_tracker/presentation/home/home_screen.dart' as _i5;
import 'package:movie_tracker/presentation/initial/initial_view.dart' as _i6;
import 'package:movie_tracker/presentation/intro/intro_screen.dart' as _i7;
import 'package:movie_tracker/presentation/movie_details/details_screen/movie_details_screen.dart'
    as _i8;
import 'package:movie_tracker/presentation/movie_details/overwiew/movie_overview_screen.dart'
    as _i9;
import 'package:movie_tracker/presentation/onboarding/favorite_movies/favorite_movies_chooser_screen.dart'
    as _i4;
import 'package:movie_tracker/presentation/onboarding/onboarding_screen.dart'
    as _i10;
import 'package:movie_tracker/presentation/onboarding/paywall/black_friday/black_friday_paywall_screen.dart'
    as _i2;
import 'package:movie_tracker/presentation/settings/settings_screen.dart'
    as _i11;

/// generated route for
/// [_i1.BaseScreen]
class BaseRoute extends _i12.PageRouteInfo<void> {
  const BaseRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i1.BaseScreen();
    },
  );
}

/// generated route for
/// [_i2.BlackFridayPaywallScreen]
class BlackFridayPaywallRoute
    extends _i12.PageRouteInfo<BlackFridayPaywallRouteArgs> {
  BlackFridayPaywallRoute({
    required bool isFromOnboarding,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          BlackFridayPaywallRoute.name,
          args: BlackFridayPaywallRouteArgs(
            isFromOnboarding: isFromOnboarding,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BlackFridayPaywallRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BlackFridayPaywallRouteArgs>();
      return _i2.BlackFridayPaywallScreen(
        isFromOnboarding: args.isFromOnboarding,
        key: args.key,
      );
    },
  );
}

class BlackFridayPaywallRouteArgs {
  const BlackFridayPaywallRouteArgs({
    required this.isFromOnboarding,
    this.key,
  });

  final bool isFromOnboarding;

  final _i13.Key? key;

  @override
  String toString() {
    return 'BlackFridayPaywallRouteArgs{isFromOnboarding: $isFromOnboarding, key: $key}';
  }
}

/// generated route for
/// [_i3.DiscoverScreen]
class DiscoverRoute extends _i12.PageRouteInfo<void> {
  const DiscoverRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.DiscoverScreen();
    },
  );
}

/// generated route for
/// [_i4.FavoriteMoviesChooserScreen]
class FavoriteMoviesChooserRoute extends _i12.PageRouteInfo<void> {
  const FavoriteMoviesChooserRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FavoriteMoviesChooserRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteMoviesChooserRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.FavoriteMoviesChooserScreen();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    required bool isFromOnboarding,
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            isFromOnboarding: isFromOnboarding,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>();
      return _i5.HomeScreen(
        isFromOnboarding: args.isFromOnboarding,
        key: args.key,
      );
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({
    required this.isFromOnboarding,
    this.key,
  });

  final bool isFromOnboarding;

  final _i14.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{isFromOnboarding: $isFromOnboarding, key: $key}';
  }
}

/// generated route for
/// [_i6.InitialScreen]
class InitialRoute extends _i12.PageRouteInfo<void> {
  const InitialRoute({List<_i12.PageRouteInfo>? children})
      : super(
          InitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.InitialScreen();
    },
  );
}

/// generated route for
/// [_i7.IntroScreen]
class IntroRoute extends _i12.PageRouteInfo<void> {
  const IntroRoute({List<_i12.PageRouteInfo>? children})
      : super(
          IntroRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.IntroScreen();
    },
  );
}

/// generated route for
/// [_i8.MovieDetailsScreen]
class MovieDetailsRoute extends _i12.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    required String id,
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailsRouteArgs>();
      return _i8.MovieDetailsScreen(
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

  final _i14.Key? key;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i9.MovieOverviewScreen]
class MovieOverviewRoute extends _i12.PageRouteInfo<MovieOverviewRouteArgs> {
  MovieOverviewRoute({
    required _i15.Movie movie,
    required bool isFromAi,
    required _i16.WatchStatus? watchStatus,
    required _i17.MovieAiRecFormState? movieAiRecFormState,
    required bool isFavorite,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          MovieOverviewRoute.name,
          args: MovieOverviewRouteArgs(
            movie: movie,
            isFromAi: isFromAi,
            watchStatus: watchStatus,
            movieAiRecFormState: movieAiRecFormState,
            isFavorite: isFavorite,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieOverviewRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieOverviewRouteArgs>();
      return _i9.MovieOverviewScreen(
        movie: args.movie,
        isFromAi: args.isFromAi,
        watchStatus: args.watchStatus,
        movieAiRecFormState: args.movieAiRecFormState,
        isFavorite: args.isFavorite,
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
    required this.isFavorite,
    this.key,
  });

  final _i15.Movie movie;

  final bool isFromAi;

  final _i16.WatchStatus? watchStatus;

  final _i17.MovieAiRecFormState? movieAiRecFormState;

  final bool isFavorite;

  final _i13.Key? key;

  @override
  String toString() {
    return 'MovieOverviewRouteArgs{movie: $movie, isFromAi: $isFromAi, watchStatus: $watchStatus, movieAiRecFormState: $movieAiRecFormState, isFavorite: $isFavorite, key: $key}';
  }
}

/// generated route for
/// [_i10.OnboardingScreen]
class OnboardingRoute extends _i12.PageRouteInfo<void> {
  const OnboardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i11.SettingsScreen]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.SettingsScreen();
    },
  );
}
