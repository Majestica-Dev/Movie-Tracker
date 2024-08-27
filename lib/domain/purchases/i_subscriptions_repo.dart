import 'package:fpdart/fpdart.dart';
import 'package:movie_tracker/domain/purchases/entities/failure/purchase_failure.dart';
import 'package:movie_tracker/domain/purchases/entities/subscription_plans.dart';

abstract interface class ISubscriptionsRepo {
  Future<Either<PurchaseFailure, SubscriptionPlans>> fetchSubscriptions();
}
