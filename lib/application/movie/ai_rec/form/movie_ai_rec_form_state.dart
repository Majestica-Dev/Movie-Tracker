part of 'movie_ai_rec_form_cubit.dart';

class MovieAiRecFormState with EquatableMixin {
  final int pageIndex;
  final WatchMood? mood;
  final List<MovieGenre> genres;
  final List<StreamingService> streamingServices;
  final bool moveEnabled;

  MovieAiRecFormState({
    this.pageIndex = 0,
    this.mood,
    required this.genres,
    required this.streamingServices,
    this.moveEnabled = true,
  });

  MovieAiRecFormState copyWith({
    int? pageIndex,
    final WatchMood? mood,
    final List<MovieGenre>? genres,
    final List<StreamingService>? streamingServices,
    final bool? moveEnabled,
  }) {
    return MovieAiRecFormState(
      mood: mood ?? this.mood,
      pageIndex: pageIndex ?? this.pageIndex,
      genres: genres ?? this.genres,
      streamingServices: streamingServices ?? this.streamingServices,
      moveEnabled: moveEnabled ?? this.moveEnabled,
    );
  }

  bool get isLastPage {
    return pageIndex == 3;
  }

  bool get isFirstPage {
    return pageIndex == 0;
  }

  @override
  List<Object?> get props => [
        pageIndex,
        mood,
        genres,
        streamingServices,
        moveEnabled,
      ];
}
