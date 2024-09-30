import '../core/shared_prefs/shared_prefs_manager.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirstVisitPrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  FirstVisitPrefManager(this._sharedPrefsManager);

  bool get isFirstVisit => _sharedPrefsManager.isFirstVisit.get() ?? true;

  Future<void> recordVisit() async {
    await _sharedPrefsManager.isFirstVisit.set(false);
  }
}
