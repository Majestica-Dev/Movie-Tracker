import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

extension MovieListX on Movies {
  Map<WatchStatus, Movies> get getFiltredMoviesByStatusAsMap {
    Map<WatchStatus, List<Movie>> moviesMap = {};

    for (final movie in this) {
      if (moviesMap[movie.status] != null) {
        moviesMap[movie.status]!.add(movie);
      } else {
        moviesMap[movie.status] = [movie];
      }
    }

    return moviesMap;
  }

  Movies get favorites {
    return where(
      (element) => element.isFavorite == true,
    ).toList();
  }
}
