import 'package:movie_tracker/core/typdefs/typdef.dart';

final class DiscoverMovies {
  final String genre;
  final String description;
  final Movies movies;

  DiscoverMovies({
    required this.genre,
    required this.description,
    required this.movies,
  });
}
