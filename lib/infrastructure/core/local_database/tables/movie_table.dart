part of '../drift_database.dart';

class MovieTable extends Table {
  @override
  String? get tableName => 'Movie Table';

  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  TextColumn get posterImageUrl => text().nullable()();
  TextColumn get status => textEnum<WatchStatus>()();
  DateTimeColumn get editedAt => dateTime()();
  RealColumn get rating => real().nullable()();
  DateTimeColumn get releaseDate => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

extension MovieTableMapper on MovieTableData {
  Movie get toEntity {
    return Movie(
      rating: rating,
      id: id,
      title: title,
      description: description,
      posterImageUrl: posterImageUrl,
      status: status,
      editedAt: editedAt,
      releaseDate: releaseDate,
    );
  }

  static MovieTableCompanion toCompanion(Movie movie) {
    return MovieTableCompanion(
      id: Value(movie.id),
      title: Value(movie.title),
      description: Value(movie.description),
      posterImageUrl: Value(movie.posterImageUrl),
      status: Value(movie.status),
      editedAt: Value(movie.editedAt),
      rating: Value(movie.rating),
      releaseDate: Value(movie.releaseDate),
    );
  }
}
