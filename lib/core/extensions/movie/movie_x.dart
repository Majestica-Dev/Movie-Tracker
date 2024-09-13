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
    final double? rating,
    final DateTime? releaseDate,
    final String? trailerLink,
    final bool? isFavorite,
  }) {
    return Movie(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      posterImageUrl: posterImageUrl ?? this.posterImageUrl,
      status: status ?? this.status,
      editedAt: editedAt ?? this.editedAt,
      rating: rating ?? this.rating,
      releaseDate: releaseDate ?? this.releaseDate,
      trailerLink: trailerLink ?? this.trailerLink,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  String? get ratingPercentAsString {
    if (rating == null) return null;

    return (rating! * 10).toStringAsFixed(0) + r' %';
  }

  String get print {
    return '''Movie(
      id: '$id',
      title: '$title',
      description: "$description",
      posterImageUrl: '$posterImageUrl',
      status: $status,
      editedAt:'DateTime.now()',
      rating: $rating,
      releaseDate: '$releaseDate',
      trailerLink:  '$trailerLink',
    )''';
  }
}
