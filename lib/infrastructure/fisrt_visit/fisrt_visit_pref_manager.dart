import '../core/shared_prefs/shared_prefs_manager.dart';
import 'package:injectable/injectable.dart';

@singleton
class FisrtVisitPrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  FisrtVisitPrefManager(this._sharedPrefsManager);

  bool get isFirstVisit => _sharedPrefsManager.isFirstVisit.get() ?? true;

  Future<void> recordVisit() async {
    await _sharedPrefsManager.isFirstVisit.set(false);
  }
}
