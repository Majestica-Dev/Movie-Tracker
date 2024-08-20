import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';

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
}
