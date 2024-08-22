part of 'movie_actor_bloc.dart';

@freezed
class MovieActorEvent with _$MovieActorEvent {
  const factory MovieActorEvent.updateStatus({
    required String id,
    required WatchStatus status,
  }) = _UpdateStatus;

  const factory MovieActorEvent.remove({required String id}) = _Remove;
}
