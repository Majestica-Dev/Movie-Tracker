import 'package:collection/collection.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

extension MovieWatcherStateX on MovieWatcherState {
  Movie? getMovieById(String id) {
    return allMovies.firstWhereOrNull(
      (element) => element.id == id,
    );
  }

  List<Movie> get allMovies {
    return maybeMap(
      orElse: () => [],
      succeeded: (succeededState) => succeededState.allMovies,
    );
  }
}
