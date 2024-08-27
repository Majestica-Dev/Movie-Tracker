import 'package:in_app_review/in_app_review.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/review/review_from.dart';
import 'review_pref_manager.dart';

@singleton
class ReviewService {
  final InAppReview _inAppReview;
  final ReviewPrefManager _reviewManager;

  ReviewService(
    this._inAppReview,
    this._reviewManager,
  );

  Future<void> requestReviewWithoutCheck() async {
    if (await _inAppReview.isAvailable()) {
      _inAppReview.requestReview();
    }
  }

  Future<bool> checkAndRequestReviw({required ReviewFrom reviewFrom}) async {
    final bool shouldShowReview =
        await _reviewManager.checkShouldShowAndSetShown(
      reviewFrom: reviewFrom,
    );

    if (shouldShowReview) {
      requestReviewWithoutCheck();
    }

    return shouldShowReview;
  }

  Future<void> openAppStoreReview() async {
    await _inAppReview.openStoreListing(appStoreId: '6642699326');
  }
}
