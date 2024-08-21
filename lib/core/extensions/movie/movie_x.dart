import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

extension MovieX on Movie {
  Movie copyWith({
    final String? id,
    final String? title,
    final String? description,
    final String? posterImageUrl,
    final DateTime? editedAt,
    final WatchStatus? status,
  }) {
    return Movie(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      posterImageUrl: posterImageUrl ?? this.posterImageUrl,
      status: status ?? this.status,
      editedAt: editedAt ?? this.editedAt,
    );
  }
}
