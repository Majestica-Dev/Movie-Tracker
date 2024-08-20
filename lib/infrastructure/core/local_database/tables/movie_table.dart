part of '../drift_database.dart';

class MovieTable extends Table {
  @override
  String? get tableName => 'Movie Table';

  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  TextColumn get posterImageUrl => text().nullable()();
  TextColumn get status => textEnum<WatchStatus>()();

  @override
  Set<Column> get primaryKey => {id};
}

extension MovieTableMapper on MovieTableData {
  Movie get toEntity {
    return Movie(
      id: id,
      title: title,
      description: description,
      posterImageUrl: posterImageUrl,
      status: status,
    );
  }

  static MovieTableCompanion toCompanion(Movie movie) {
    return MovieTableCompanion(
      id: Value(movie.id),
      title: Value(movie.title),
      description: Value(movie.description),
      posterImageUrl: Value(movie.posterImageUrl),
      status: Value(movie.status),
    );
  }
}
