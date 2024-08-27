import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_repo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/infrastructure/movie/manager/movie_pref_manager.dart';

part 'movie_saver_event.dart';
part 'movie_saver_state.dart';
part 'movie_saver_bloc.freezed.dart';

@singleton
class MovieSaverBloc extends Bloc<MovieSaverEvent, MovieSaverState> {
  final IMovieRepo _iMovieRepo;
  final MoviePrefManager _moviePrefManager;

  MovieSaverBloc(
    this._iMovieRepo,
    this._moviePrefManager,
  ) : super(
          const MovieSaverState.initial(),
        ) {
    on<_Save>(_onSave);
  }

  Future<void> _onSave(
    _Save event,
    Emitter<MovieSaverState> emit,
  ) async {
    emit(const MovieSaverState.inProgress());

    await _iMovieRepo.save(movie: event.movie);

    await _moviePrefManager.plusToAddedMoviesCount();

    emit(MovieSaverState.saved(
      addedMoviesCount: _moviePrefManager.addedMoviesCount,
    ));
  }
}
