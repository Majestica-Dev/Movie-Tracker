part of 'movie_ai_rec_bloc.dart';

@freezed
class MovieAiRecEvent with _$MovieAiRecEvent {
  const factory MovieAiRecEvent.getRecomended({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required Movies favoriteMovies,
  }) = _GetRecomended;
}
