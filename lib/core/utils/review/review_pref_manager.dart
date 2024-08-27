import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/review/review_from.dart';
import 'package:movie_tracker/infrastructure/core/shared_prefs/prefs/pref.dart';
import '../../extensions/date/date_time_x.dart';
import '../../../infrastructure/core/shared_prefs/shared_prefs_manager.dart';

@singleton
class ReviewPrefManager {
  final SharedPrefsManager _sharedPrefsManager;

  ReviewPrefManager(this._sharedPrefsManager);

  String? get _lastReviewShownDateString =>
      _sharedPrefsManager.lastReviewShownDate.get();

  DateTime? get lastReviewShownDate {
    if (_lastReviewShownDateString == null) {
      return null;
    } else {
      return DateTime.parse(
        _lastReviewShownDateString!,
      );
    }
  }

  bool get isTodayShown {
    return lastReviewShownDate == null ? false : lastReviewShownDate!.isToday;
  }

  bool isReviewShown({required ReviewFrom reviewFrom}) {
    final reviewPref = _getReviewPref(reviewFrom);

    final bool isReviewShown = reviewPref.get() ?? false;

    return isReviewShown;
  }

  Future<bool> checkShouldShowAndSetShown({
    required ReviewFrom reviewFrom,
    bool shouldCheckTodayShown = true,
  }) async {
    if (isTodayShown && shouldCheckTodayShown) return false;

    if (isReviewShown(reviewFrom: reviewFrom)) return false;

    final reviewPref = _getReviewPref(reviewFrom);

    await reviewPref.set(true);

    recordLastSeenDate();

    return true;
  }

  Future<void> recordLastSeenDate() async {
    _sharedPrefsManager.lastReviewShownDate.set(
      DateTime.now().toIso8601String(),
    );
  }

  Pref<bool> _getReviewPref(ReviewFrom reviewFrom) {
    return switch (reviewFrom) {
      ReviewFrom.onboarding => _sharedPrefsManager.showedReviewFromOnboarding,
      ReviewFrom.added10movies =>
        _sharedPrefsManager.showedReviewFromAdded10Moves,
      ReviewFrom.boughtPremium =>
        _sharedPrefsManager.showedReviewFromPremiumPurchased,
      ReviewFrom.aiMovieResult =>
        _sharedPrefsManager.showedReviewFromAIMovieResult,
    };
  }
}
