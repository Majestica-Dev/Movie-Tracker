import 'package:injectable/injectable.dart';
import 'package:movie_tracker/infrastructure/core/shared_prefs/shared_prefs_manager.dart';

@singleton
class AiMoviesPrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  AiMoviesPrefManager(this._sharedPrefsManager);

  int get aiGeneratedMoviesCount =>
      _sharedPrefsManager.aiGeneratedMoviesCount.get() ?? 0;

  Future<void> plusToAiGeneratedMoviesCount() async {
    await _sharedPrefsManager.aiGeneratedMoviesCount.set(
      aiGeneratedMoviesCount + 1,
    );
  }
}
