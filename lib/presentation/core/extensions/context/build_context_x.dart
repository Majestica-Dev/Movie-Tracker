import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';
import 'package:movie_tracker/core/constants/freemium_limits.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/presentation/core/extensions/premium_checker/premium_checker_x.dart';

extension BuildContextX on BuildContext {
  bool get hasPremium => read<PremiumCheckerBloc>().state.hasPremium;

  Movies get allMovies => read<MovieWatcherBloc>().state.allMovies;

  bool get addMovieEnabled =>
      hasPremium || allMovies.length < FreemiumLimits.addMovieLimit;

  bool get generateAiEnabled =>
      hasPremium ||
      Locator.aiMoviesPrefManager.aiGeneratedMoviesCount <
          FreemiumLimits.aiGeneratedMovies;
}
