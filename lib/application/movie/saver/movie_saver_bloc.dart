import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_repo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'movie_saver_event.dart';
part 'movie_saver_state.dart';
part 'movie_saver_bloc.freezed.dart';

@singleton
class MovieSaverBloc extends Bloc<MovieSaverEvent, MovieSaverState> {
  final IMovieRepo _iMovieRepo;

  MovieSaverBloc(
    this._iMovieRepo,
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

    emit(const MovieSaverState.saved());
  }
}
