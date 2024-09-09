import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/infrastructure/movie/ai_rec/manager/movie_ai_rec_pref_manager.dart';

@singleton
class MovieAiRecUseCountCubit extends Cubit<int> {
  final MovieAiRecPrefManager _movieAiRecPrefManager;

  MovieAiRecUseCountCubit(this._movieAiRecPrefManager)
      : super(_movieAiRecPrefManager.aiGeneratedMoviesCount);

  void checkCount() {
    emit(_movieAiRecPrefManager.aiGeneratedMoviesCount);
  }
}
