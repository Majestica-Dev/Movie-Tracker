import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:movie_tracker/domain/purchases/entities/failure/purchase_failure.dart';
import 'package:movie_tracker/domain/purchases/entities/subscription_plans.dart';
import 'package:movie_tracker/domain/purchases/i_subscriptions_repo.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

@Singleton(as: ISubscriptionsRepo)
class SubscriptionsRepoImpl implements ISubscriptionsRepo {
  @override
  Future<Either<PurchaseFailure, SubscriptionPlans>>
      fetchSubscriptions() async {
    try {
      final products = await Purchases.getProducts(
        [
          'com.majestica.movieTracker.yearly35',
          'com.majestica.movieTracker.monthly.9',
        ],
      );

      for (var pr in products) {
        log(pr.identifier);
      }

      if (products.isEmpty) {
        return Left(PurchaseError());
      }

      final yearly = products.firstWhere(
        (e) => e.identifier == 'com.majestica.movieTracker.yearly35',
      );

      final monthly9 = products.firstWhereOrNull(
        (e) => e.identifier == 'com.majestica.movieTracker.monthly.9',
      );

      final subscriptionPlans = SubscriptionPlans(
        yearly: yearly,
        monthly9: monthly9,
      );

      return Right(subscriptionPlans);
    } catch (e, st) {
      if (kDebugMode) {
        Error.throwWithStackTrace(e, st);
      }

      Sentry.captureException(e, stackTrace: st);

      return Left(PurchaseError());
    }
  }
}
