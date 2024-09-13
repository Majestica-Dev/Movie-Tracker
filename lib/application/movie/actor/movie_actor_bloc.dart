import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_repo.dart';

part 'movie_actor_event.dart';
part 'movie_actor_state.dart';
part 'movie_actor_bloc.freezed.dart';

@injectable
class MovieActorBloc extends Bloc<MovieActorEvent, MovieActorState> {
  final IMovieRepo _iMovieRepo;

  MovieActorBloc(this._iMovieRepo)
      : super(
          const MovieActorState.intial(),
        ) {
    on<_UpdateStatus>(_onUpdateStatus);
    on<_Remove>(_onRemove);
    on<_UpdateIsFavorite>(_updateIsFavorite);
  }

  Future<void> _onUpdateStatus(
    _UpdateStatus event,
    Emitter<MovieActorState> emit,
  ) async {
    emit(const MovieActorState.inProgress());

    await _iMovieRepo.update(movie: event.movie);

    emit(MovieActorState.updatedStatus(status: event.movie.status));
  }

  Future<void> _updateIsFavorite(
    _UpdateIsFavorite event,
    Emitter<MovieActorState> emit,
  ) async {
    emit(const MovieActorState.inProgress());

    await _iMovieRepo.update(movie: event.movie);

    emit(MovieActorState.updatedIsFavorite(isFavorite: event.movie.isFavorite));
  }

  Future<void> _onRemove(
    _Remove event,
    Emitter<MovieActorState> emit,
  ) async {
    emit(const MovieActorState.inProgress());

    await _iMovieRepo.remove(id: event.id);

    emit(const MovieActorState.removed());
  }
}
