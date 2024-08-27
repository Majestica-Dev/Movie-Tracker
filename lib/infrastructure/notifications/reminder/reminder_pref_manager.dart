import 'package:injectable/injectable.dart';
import 'package:movie_tracker/infrastructure/core/shared_prefs/shared_prefs_manager.dart';

@singleton
class ReminderPrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  ReminderPrefManager(this._sharedPrefsManager);

  List<String> get reminderNotificationsIds =>
      _sharedPrefsManager.reminderNotificationsIds.get() ?? [];

  void setNotificationsIds(List<String> ids) {
    _sharedPrefsManager.reminderNotificationsIds.set(ids);
  }
}
