import 'package:injectable/injectable.dart';
import 'package:movie_tracker/infrastructure/core/shared_prefs/shared_prefs_manager.dart';

@singleton
class MovieAiRecPrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  MovieAiRecPrefManager(this._sharedPrefsManager);

  int get aiGeneratedMoviesCount =>
      _sharedPrefsManager.aiGeneratedMoviesCount.get() ?? 0;

  List<String> get alreadyAiRecMovies =>
      _sharedPrefsManager.alreadyAiRecMovies.get() ?? [];

  Future<void> plusToAiGeneratedMoviesCount() async {
    await _sharedPrefsManager.aiGeneratedMoviesCount.set(
      aiGeneratedMoviesCount + 1,
    );
  }

  Future<void> recordRecMovie(String movieTitle) async {
    List<String> recMovies = List.from(alreadyAiRecMovies);

    recMovies.add(movieTitle);

    _sharedPrefsManager.alreadyAiRecMovies.set(recMovies);
  }
}
