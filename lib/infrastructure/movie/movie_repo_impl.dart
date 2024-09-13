import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

import 'package:movie_tracker/domain/movie/repositories/i_movie_repo.dart';
import 'package:movie_tracker/infrastructure/core/local_database/drift_database.dart';

@Singleton(as: IMovieRepo)
class MovieRepoImpl implements IMovieRepo {
  final AppDriftDatabase _database;

  MovieRepoImpl(this._database);

  @override
  Stream<List<Movie>> get watchAll {
    return _database.select(_database.movieTable).watch().asyncMap(
          (typedResults) => typedResults
              .map(
                (r) => MovieTableMapper(r).toEntity,
              )
              .toList(),
        );
  }

  @override
  Future<void> remove({required String id}) {
    return (_database.delete(_database.movieTable)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .go();
  }

  @override
  Future<int> save({required Movie movie}) {
    return _database.into(_database.movieTable).insert(
          MovieTableMapper.toCompanion(
            movie,
          ),
          mode: InsertMode.insertOrIgnore,
        );
  }

  @override
  Future<void> update({required Movie movie}) {
    return _database.into(_database.movieTable).insert(
          MovieTableMapper.toCompanion(
            movie,
          ),
          mode: InsertMode.insertOrReplace,
        );
  }
}
