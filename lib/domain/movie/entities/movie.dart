import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

final class Movie {
  final String id;
  final String title;
  final String? description;
  final String? posterImageUrl;
  final WatchStatus status;

  const Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.posterImageUrl,
    required this.status,
  });
}
