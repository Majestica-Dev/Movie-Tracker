import 'package:movie_tracker/infrastructure/core/shared_prefs/prefs/string_pref.dart';
import 'package:movie_tracker/infrastructure/core/shared_prefs/prefs/string_list_pref.dart';

import 'prefs/bool_pref.dart';

import 'prefs/pref.dart';

import 'raw_manager.dart';
import 'package:injectable/injectable.dart';

class PrefsKeys {
  static const isFirstVisit = 'isFirstVisit';

  //Review
  static const lastReviewShownDate = 'lastReviewShownDate';
  static const showedReviewFromOnboarding = 'showedReviewFromOnboarding';
  static const showedReviewFromPremiumPurchased =
      'showedReviewFromPremiumPurchased';
  static const showedReviewFromAdded10Moves = 'showedReviewFromAdded10Moves';
  static const showedReviewFromAIMovieResult = 'showedReviewFromAIMovieResult';
  static const reminderNotificationsIds = 'reminderNotificationsIds';

  PrefsKeys._();
}

@singleton
class SharedPrefsManager {
  final Pref<bool> isFirstVisit;

  //Review
  final Pref<String> lastReviewShownDate;
  final Pref<bool> showedReviewFromOnboarding;
  final Pref<bool> showedReviewFromPremiumPurchased;
  final Pref<bool> showedReviewFromAdded10Moves;
  final Pref<bool> showedReviewFromAIMovieResult;
  final Pref<List<String>> reminderNotificationsIds;

  SharedPrefsManager(
    SharedPrefsRawManager sharedPreferences,
  )   : isFirstVisit = BoolPref(
          PrefsKeys.isFirstVisit,
          sharedPreferences,
        ),

        //Review
        lastReviewShownDate = StringPref(
          PrefsKeys.lastReviewShownDate,
          sharedPreferences,
        ),
        showedReviewFromOnboarding = BoolPref(
          PrefsKeys.showedReviewFromOnboarding,
          sharedPreferences,
        ),
        showedReviewFromPremiumPurchased = BoolPref(
          PrefsKeys.showedReviewFromPremiumPurchased,
          sharedPreferences,
        ),
        showedReviewFromAdded10Moves = BoolPref(
          PrefsKeys.showedReviewFromAdded10Moves,
          sharedPreferences,
        ),
        showedReviewFromAIMovieResult = BoolPref(
          PrefsKeys.showedReviewFromAIMovieResult,
          sharedPreferences,
        ),

        // Reminder
        reminderNotificationsIds = StringListPref(
          PrefsKeys.reminderNotificationsIds,
          sharedPreferences,
        );
}
