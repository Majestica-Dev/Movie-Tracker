import 'prefs/bool_pref.dart';

import 'prefs/pref.dart';

import 'raw_manager.dart';
import 'package:injectable/injectable.dart';

class PrefsKeys {
  static const isFirstVisit = 'isFirstVisit';

  PrefsKeys._();
}

@singleton
class SharedPrefsManager {
  final Pref<bool> isFirstVisit;

  SharedPrefsManager(
    SharedPrefsRawManager sharedPreferences,
  ) : isFirstVisit = BoolPref(
          PrefsKeys.isFirstVisit,
          sharedPreferences,
        );
}
