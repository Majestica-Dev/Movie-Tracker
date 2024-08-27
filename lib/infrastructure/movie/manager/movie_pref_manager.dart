import 'package:injectable/injectable.dart';
import 'package:movie_tracker/infrastructure/core/shared_prefs/shared_prefs_manager.dart';

@singleton
class MoviePrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  MoviePrefManager(this._sharedPrefsManager);

  int get addedMoviesCount => _sharedPrefsManager.addedMoviesCount.get() ?? 0;

  Future<void> plusToAddedBookCount() async {
    await _sharedPrefsManager.addedMoviesCount.set(
      addedMoviesCount + 1,
    );
  }
}
