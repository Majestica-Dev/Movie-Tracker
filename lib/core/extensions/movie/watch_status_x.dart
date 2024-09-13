import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

extension WatchStatusX on WatchStatus {
  String get title {
    return switch (this) {
      WatchStatus.watched => 'Watched',
      WatchStatus.toWatch => 'To Watch',
    };
  }

  String get listName {
    return switch (this) {
      WatchStatus.watched => 'watched list',
      WatchStatus.toWatch => 'watch later list',
    };
  }
}
