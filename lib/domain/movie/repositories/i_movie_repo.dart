import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

abstract interface class IMovieRepo {
  Future<int> save({required Movie movie});

  Future<void> remove({required String id});

  Future<void> updateStatus({
    required String id,
    required WatchStatus status,
  });

  Stream<List<Movie>> get watchAll;
}
