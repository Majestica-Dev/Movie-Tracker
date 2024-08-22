import 'package:get_it/get_it.dart';
import 'package:movie_tracker/application/movie/actor/movie_actor_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/bloc/movie_ai_rec_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
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

  static MovieActorBloc get movieActorBloc => _getIt<MovieActorBloc>();

  static MovieAiRecFormCubit get movieAiRecFormCubit =>
      _getIt<MovieAiRecFormCubit>();

  static MovieAiRecBloc get movieAiRecBloc => _getIt<MovieAiRecBloc>();
}
