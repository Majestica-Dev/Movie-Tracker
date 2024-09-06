import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';

part 'movie_ai_rec_form_state.dart';

@injectable
class MovieAiRecFormCubit extends Cubit<MovieAiRecFormState> {
  MovieAiRecFormCubit()
      : super(
          MovieAiRecFormState(
            genres: [],
            streamingServices: [],
          ),
        );

  void init(MovieAiRecFormState? movieAiRecFormState) {
    if (movieAiRecFormState == null) return;

    emit(movieAiRecFormState.copyWith(
      pageIndex: 0,
      moveEnabled: true,
    ));
  }

  void setPageIndex(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }

  void setMood(WatchMood mood) {
    emit(state.copyWith(mood: mood));
  }

  void setOrRemoveGenre(MovieGenre genre) {
    if (genre == MovieGenre.any) {
      emit(state.copyWith(genres: [MovieGenre.any]));

      return;
    }

    List<MovieGenre> genres = List.from(state.genres);

    if (genres.contains(genre)) {
      genres.remove(genre);
    } else {
      genres.remove(MovieGenre.any);

      genres.add(genre);
    }

    emit(state.copyWith(genres: genres));
  }

  void setOrRemoveStreamingServices(StreamingService service) {
    if (service == StreamingService.any) {
      emit(state.copyWith(streamingServices: [StreamingService.any]));

      return;
    }

    List<StreamingService> services = List.from(state.streamingServices);

    if (services.contains(service)) {
      services.remove(service);
    } else {
      services.remove(StreamingService.any);

      services.add(service);
    }

    emit(state.copyWith(streamingServices: services));
  }

  void setMoveEnabled(bool moveEnabled) =>
      emit(state.copyWith(moveEnabled: moveEnabled));
}
