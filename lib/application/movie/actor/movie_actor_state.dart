part of 'movie_actor_bloc.dart';

@freezed
class MovieActorState with _$MovieActorState {
  const factory MovieActorState.intial() = _Intial;

  const factory MovieActorState.inProgress() = _InProgress;

  const factory MovieActorState.updatedStatus({
    required WatchStatus status,
  }) = _UpdatedStatus;

  const factory MovieActorState.updatedIsFavorite({
    required bool isFavorite,
  }) = _UpdatedIsFavorite;

  const factory MovieActorState.removed() = _Removed;
}
