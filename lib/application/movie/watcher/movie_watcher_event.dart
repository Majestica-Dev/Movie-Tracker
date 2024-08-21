part of 'movie_watcher_bloc.dart';

@freezed
class MovieWatcherEvent with _$MovieWatcherEvent {
  const factory MovieWatcherEvent.init() = _Init;

  const factory MovieWatcherEvent.handleSucceeded({
    required Movies allMovies,
    required Map<WatchStatus, Movies> moviesMap,
  }) = _HandleSucceeded;
}
