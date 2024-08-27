import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/presentation/discover/data/action_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/comedy_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/scifi_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/thriller_movies_data.dart';

extension MovieGenreX on MovieGenre {
  String get title {
    return switch (this) {
      MovieGenre.action => 'Action',
      MovieGenre.comedy => 'Comedy',
      MovieGenre.drama => 'Drama',
      MovieGenre.sciFi => 'Sci-Fi',
      MovieGenre.horror => 'Horror',
      MovieGenre.documentary => 'Documentary',
      MovieGenre.romance => 'Romance',
      MovieGenre.thriller => 'Thriller',
    };
  }

  String get emoji {
    return switch (this) {
      MovieGenre.action => '💥',
      MovieGenre.comedy => '🎭',
      MovieGenre.drama => '🌧️',
      MovieGenre.sciFi => '🚀',
      MovieGenre.horror => '👻',
      MovieGenre.documentary => '📚',
      MovieGenre.romance => '🌹',
      MovieGenre.thriller => '🎬',
    };
  }

  Movies get discoverMovies {
    return switch (this) {
      MovieGenre.action => actionMovies.movies,
      MovieGenre.comedy => comedyMovies.movies,
      MovieGenre.drama => thrillerMovies.movies,
      MovieGenre.sciFi => sciFiMovies.movies,
      MovieGenre.horror => thrillerMovies.movies,
      MovieGenre.documentary => thrillerMovies.movies,
      MovieGenre.romance => thrillerMovies.movies,
      MovieGenre.thriller => thrillerMovies.movies,
    };
  }
}
