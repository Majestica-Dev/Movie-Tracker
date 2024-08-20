part of 'movie_watcher_bloc.dart';

@freezed
class MovieWatcherState with _$MovieWatcherState {
  const factory MovieWatcherState.inProgress() = _InProgress;

  const factory MovieWatcherState.succeeded({
    required Movies allMovies,
  }) = _Succeeded;

  const factory MovieWatcherState.failed({
    required String message,
  }) = _Failed;
}
