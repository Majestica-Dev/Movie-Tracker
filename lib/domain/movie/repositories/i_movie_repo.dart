import 'package:movie_tracker/domain/movie/entities/movie.dart';

abstract interface class IMovieRepo {
  Future<int> save({required Movie movie});

  Future<void> remove({required String id});

  Future<void> update({required Movie movie});

  Stream<List<Movie>> get watchAll;
}
