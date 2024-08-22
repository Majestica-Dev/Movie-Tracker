part of 'movie_actor_bloc.dart';

@freezed
class MovieActorState with _$MovieActorState {
  const factory MovieActorState.intial() = _Intial;

  const factory MovieActorState.inProgress() = _InProgress;

  const factory MovieActorState.succeeded() = _Succeeded;
}
