import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

final class Movie {
  final String id;
  final String title;
  final String? description;
  final String? posterImageUrl;
  final DateTime editedAt;
  final WatchStatus status;
  final double? rating;

  const Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.posterImageUrl,
    required this.status,
    required this.editedAt,
    required this.rating,
  });
}
