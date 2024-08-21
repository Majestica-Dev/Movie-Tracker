import 'package:get_it/get_it.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/application/movie/search/movie_search_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';

import 'package:movie_tracker/presentation/core/router/app_router.dart';

abstract final class Locator {
  static final GetIt _getIt = GetIt.I;

  static AppRouter get appRouter => _getIt<AppRouter>();

  static MovieSearchBloc get movieSearchBloc => _getIt<MovieSearchBloc>();

  static MovieWatcherBloc get movieWatcherBloc => _getIt<MovieWatcherBloc>();

  static MovieSaverBloc get movieSaverBloc => _getIt<MovieSaverBloc>();
}
