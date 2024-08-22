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

  void setPageIndex(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }

  void setMood(WatchMood mood) {
    emit(state.copyWith(mood: mood));
  }

  void setOrRemoveGenre(MovieGenre genre) {
    List<MovieGenre> genres = List.from(state.genres);

    if (genres.contains(genre)) {
      genres.remove(genre);
    } else {
      genres.add(genre);
    }

    emit(state.copyWith(genres: genres));
  }

  void setOrRemoveStreamingServices(StreamingService service) {
    List<StreamingService> services = List.from(state.streamingServices);

    if (services.contains(service)) {
      services.remove(service);
    } else {
      services.add(service);
    }

    emit(state.copyWith(streamingServices: services));
  }

  void setMoveEnabled(bool moveEnabled) =>
      emit(state.copyWith(moveEnabled: moveEnabled));
}
