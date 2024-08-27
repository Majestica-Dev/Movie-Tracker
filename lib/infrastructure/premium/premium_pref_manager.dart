import '../core/shared_prefs/shared_prefs_manager.dart';
import 'package:injectable/injectable.dart';

@singleton
class PremiumPrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  PremiumPrefManager(this._sharedPrefsManager);

  bool get hasPremium => _sharedPrefsManager.hasPremium.get() ?? false;

  Future<void> setHasPremium(bool hasPremium) async {
    await _sharedPrefsManager.hasPremium.set(hasPremium);
  }
}
