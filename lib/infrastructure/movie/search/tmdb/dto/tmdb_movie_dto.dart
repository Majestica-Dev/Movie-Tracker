import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

class TmdbMovieDto {
  final int id;
  final String title;
  final String? overview;
  final String? posterPath;
  final double? voteAverage;
  final DateTime? releaseDate;

  const TmdbMovieDto({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
    required this.releaseDate,
  });

  factory TmdbMovieDto.fromJson(Map<String, dynamic> json) => TmdbMovieDto(
        id: (json['id'] as num).toInt(),
        title: json['title'] as String,
        overview: json['overview'] as String?,
        posterPath: json['poster_path'] as String?,
        voteAverage: (json['vote_average'] as num?)?.toDouble(),
        releaseDate: DateTime.tryParse(json['release_date'] as String),
      );

  Movie toEntity({
    required String? trailerLink,
  }) {
    return Movie(
      isFavorite: false,
      rating: voteAverage,
      editedAt: DateTime.now(),
      id: id.toString(),
      title: title,
      description: overview,
      posterImageUrl: posterPath == null
          ? null
          : 'https://image.tmdb.org/t/p/w342$posterPath',
      status: WatchStatus.toWatch,
      releaseDate: releaseDate,
      trailerLink: trailerLink,
    );
  }
}
