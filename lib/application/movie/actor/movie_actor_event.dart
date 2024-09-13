part of 'movie_actor_bloc.dart';

@freezed
class MovieActorEvent with _$MovieActorEvent {
  const factory MovieActorEvent.updateStatus({
    required Movie movie,
  }) = _UpdateStatus;

  const factory MovieActorEvent.updateIsFavorite({
    required Movie movie,
  }) = _UpdateIsFavorite;

  const factory MovieActorEvent.remove({
    required String id,
  }) = _Remove;
}
