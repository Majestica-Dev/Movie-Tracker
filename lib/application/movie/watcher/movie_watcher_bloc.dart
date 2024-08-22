import 'dart:async';

import 'package:movie_tracker/core/extensions/movie/movie_list_x.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_repo.dart';

part 'movie_watcher_bloc.freezed.dart';
part 'movie_watcher_state.dart';
part 'movie_watcher_event.dart';

@singleton
class MovieWatcherBloc extends Bloc<MovieWatcherEvent, MovieWatcherState> {
  final IMovieRepo _movieRepo;

  MovieWatcherBloc(this._movieRepo)
      : super(const MovieWatcherState.inProgress()) {
    on<_Init>(_init);
    on<_HandleSucceeded>(_onHandleSucceeded);
  }

  Future<void> _init(
    _Init event,
    Emitter<MovieWatcherState> emit,
  ) async {
    _movieRepo.watchAll.listen(
      (allMovies) {
        allMovies.sort((a, b) => b.editedAt.compareTo(a.editedAt));

        add(
          MovieWatcherEvent.handleSucceeded(
            allMovies: allMovies,
            moviesMap: allMovies.getFiltredMoviesByStatusAsMap,
          ),
        );
      },
    );
  }

  Future<void> _onHandleSucceeded(
    _HandleSucceeded event,
    Emitter<MovieWatcherState> emit,
  ) async {
    emit(MovieWatcherState.succeeded(
      allMovies: event.allMovies,
      moviesMap: event.moviesMap,
    ));
  }
}
