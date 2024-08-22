import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_ai_rec.dart';

part 'movie_ai_rec_event.dart';
part 'movie_ai_rec_state.dart';
part 'movie_ai_rec_bloc.freezed.dart';

@injectable
class MovieAiRecBloc extends Bloc<MovieAiRecEvent, MovieAiRecState> {
  final IMovieAiRec _movieAiRec;

  MovieAiRecBloc(this._movieAiRec) : super(const _Initial()) {
    on<_GetRecomended>(_getRecomended);
  }

  Future<void> _getRecomended(
    _GetRecomended event,
    Emitter<MovieAiRecState> emit,
  ) async {
    log('start event');

    emit(const MovieAiRecState.inProgress());

    final result = await _movieAiRec.getRecomended(
      genres: event.genres,
      mood: event.mood,
      streamingServices: event.streamingServices,
      movies: event.movies,
    );

    result.fold((l) => emit(const MovieAiRecState.failed()),
        (r) => emit(MovieAiRecState.succeeded(movie: r)));
  }
}
