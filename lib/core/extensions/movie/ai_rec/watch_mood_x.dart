import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';
import 'package:movie_tracker/presentation/discover/data/action_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/best_2024_movies.dart';
import 'package:movie_tracker/presentation/discover/data/comedy_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/scifi_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/thriller_movies_data.dart';

extension WatchMoodX on WatchMood {
  String get title {
    return switch (this) {
      WatchMood.relaxed => 'Relaxed',
      WatchMood.excited => 'Excited',
      WatchMood.nostalgic => 'Nostalgic',
      WatchMood.reflective => 'Reflective',
      WatchMood.needALaugh => 'Need a laugh',
      WatchMood.inForAThrill => 'In for a thrill',
    };
  }

  String get emoji {
    return switch (this) {
      WatchMood.relaxed => '😌',
      WatchMood.excited => '😃',
      WatchMood.nostalgic => '🎞️',
      WatchMood.reflective => '🤔',
      WatchMood.needALaugh => '😆',
      WatchMood.inForAThrill => '🔥',
    };
  }

  Movies get discoverMovies {
    return switch (this) {
      WatchMood.relaxed => best2024Movies.movies,
      WatchMood.excited => actionMovies.movies,
      WatchMood.nostalgic => sciFiMovies.movies,
      WatchMood.reflective => thrillerMovies.movies,
      WatchMood.needALaugh => comedyMovies.movies,
      WatchMood.inForAThrill => thrillerMovies.movies,
    };
  }
}
