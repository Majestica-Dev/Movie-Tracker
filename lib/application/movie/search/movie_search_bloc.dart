import 'package:movie_tracker/domain/movie/entities/movie.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_search_repo.dart';

part 'movie_search_bloc.freezed.dart';
part 'movie_search_event.dart';
part 'movie_search_state.dart';

@injectable
class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  final IMovieSearchRepo movieSearchRepo;

  MovieSearchBloc(this.movieSearchRepo) : super(const MovieSearchState.init()) {
    on<_Search>(_search);
  }

  Future<void> _search(
    _Search event,
    Emitter<MovieSearchState> emit,
  ) async {
    emit(const MovieSearchState.inProcess());

    final result = await movieSearchRepo.searchByTitle(event.query);

    result.fold(
      (left) {
        emit(const MovieSearchState.failed());
      },
      (right) {
        emit(MovieSearchState.done(right));
      },
    );
  }
}
