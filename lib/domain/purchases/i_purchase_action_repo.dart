import 'package:fpdart/fpdart.dart';
import 'package:movie_tracker/domain/purchases/entities/failure/purchase_failure.dart';
import 'package:purchases_flutter/models/customer_info_wrapper.dart';
import 'package:purchases_flutter/models/store_product_wrapper.dart';

abstract interface class IPurchaseActionRepo {
  Future<Either<PurchaseFailure, CustomerInfo>> buySubscription(
    StoreProduct package,
  );

  Future<Either<PurchaseFailure, CustomerInfo>> restorePurchases();

  Future<Either<PurchaseFailure, bool>> get hasActivePurchase;
}
