import 'package:movie_tracker/infrastructure/core/shared_prefs/prefs/string_list_pref.dart';

import 'prefs/bool_pref.dart';

import 'prefs/pref.dart';

import 'raw_manager.dart';
import 'package:injectable/injectable.dart';

class PrefsKeys {
  static const isFirstVisit = 'isFirstVisit';

  static const reminderNotificationsIds = 'reminderNotificationsIds';

  PrefsKeys._();
}

@singleton
class SharedPrefsManager {
  final Pref<bool> isFirstVisit;

  final Pref<List<String>> reminderNotificationsIds;

  SharedPrefsManager(
    SharedPrefsRawManager sharedPreferences,
  )   : isFirstVisit = BoolPref(
          PrefsKeys.isFirstVisit,
          sharedPreferences,
        ),
        reminderNotificationsIds = StringListPref(
          PrefsKeys.reminderNotificationsIds,
          sharedPreferences,
        );
}
