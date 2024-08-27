import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/extensions/purchase/purchase_error_code_x.dart';
import 'package:movie_tracker/domain/purchases/entities/failure/purchase_failure.dart';
import 'package:movie_tracker/domain/purchases/i_purchase_action_repo.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

@Singleton(as: IPurchaseActionRepo)
class PurchaseActionRepoImpl implements IPurchaseActionRepo {
  @override
  Future<Either<PurchaseFailure, CustomerInfo>> buySubscription(
    StoreProduct package,
  ) async {
    try {
      final customerInfo = await Purchases.purchaseStoreProduct(package);

      return Right(customerInfo);
    } on PlatformException catch (e, st) {
      if (!PurchasesErrorHelper.getErrorCode(e).isUserRelatedError) {
        Sentry.captureException(e, stackTrace: st);
      }

      return Left(PurchaseError());
    }
  }

  @override
  Future<Either<PurchaseFailure, bool>> hasActivePurchase() async {
    try {
      final purchaserInfo = await Purchases.getCustomerInfo();

      final activeSubscriptions = purchaserInfo.activeSubscriptions;

      final activenonSubscriptionTransactions =
          purchaserInfo.nonSubscriptionTransactions;

      return Right(
        activeSubscriptions.isNotEmpty ||
            activenonSubscriptionTransactions.isNotEmpty,
      );
    } catch (_) {
      return Left(PurchaseError());
    }
  }

  @override
  Future<Either<PurchaseFailure, CustomerInfo>> restorePurchases() async {
    try {
      final customerInfo = await Purchases.restorePurchases();

      return Right(customerInfo);
    } catch (e, st) {
      Sentry.captureException(e, stackTrace: st);

      return Left(PurchaseError());
    }
  }
}
