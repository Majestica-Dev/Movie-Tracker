import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';

extension WatchMoodX on WatchMood {
  String get title {
    return switch (this) {
      WatchMood.relaxed => 'Relaxed',
      WatchMood.excited => 'Excited',
      WatchMood.nostalgic => 'Nostalgic',
      WatchMood.reflective => 'Reflective',
      WatchMood.needALaugh => 'Need a laugh',
      WatchMood.inForAThrill => 'Nn for a thrill',
    };
  }
}
