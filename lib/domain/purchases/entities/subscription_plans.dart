import 'package:purchases_flutter/purchases_flutter.dart';

class SubscriptionPlans {
  final StoreProduct yearly;
  final StoreProduct? monthly9;

  SubscriptionPlans({
    required this.yearly,
    required this.monthly9,
  });
}
