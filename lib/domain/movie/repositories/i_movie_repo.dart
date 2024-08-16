import 'package:movie_tracker/domain/movie/entities/movie.dart';

abstract interface class IMovieRepo {
  Future<int> save({required Movie book});

  Future<void> remove({
    required String id,
  });

  Stream<List<Movie>> watchAll();
}
