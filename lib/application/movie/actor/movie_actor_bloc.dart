import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/repositories/i_movie_repo.dart';

part 'movie_actor_event.dart';
part 'movie_actor_state.dart';
part 'movie_actor_bloc.freezed.dart';

@injectable
class MovieActorBloc extends Bloc<MovieActorEvent, MovieActorState> {
  final IMovieRepo _iMovieRepo;

  MovieActorBloc(this._iMovieRepo) : super(const MovieActorState.intial()) {
    on<_UpdateStatus>(_onUpdateStatus);
    on<_Remove>(_onRemove);
  }

  Future<void> _onUpdateStatus(
    _UpdateStatus event,
    Emitter<MovieActorState> emit,
  ) async {
    emit(const MovieActorState.inProgress());

    await _iMovieRepo.updateStatus(
      id: event.id,
      status: event.status,
    );

    emit(const MovieActorState.succeeded());
  }

  Future<void> _onRemove(
    _Remove event,
    Emitter<MovieActorState> emit,
  ) async {
    emit(const MovieActorState.inProgress());

    await _iMovieRepo.remove(
      id: event.id,
    );

    emit(const MovieActorState.succeeded());
  }
}
