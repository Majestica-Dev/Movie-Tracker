import 'package:in_app_review/in_app_review.dart';
import 'package:injectable/injectable.dart';

@singleton
class ReviewService {
  final InAppReview _inAppReview;

  ReviewService(this._inAppReview);

  Future<void> openAppStoreReview() async {
    await _inAppReview.openStoreListing(appStoreId: '6642699326');
  }
}
